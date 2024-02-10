

import SwiftUI

struct TimetableClass: Identifiable, Hashable {
    let id: UUID
    var className: String
    var tutorName: String
    var classStartTime: Date
    var classEndTime: Date
}

struct MyTimetablePageSwiftUIView: View {
    var allClasses: [TimetableClass]
    @State private var selectedDate = Date()
    
    var body: some View {
        ZStack {
//            Color(.background)
//                .edgesIgnoringSafeArea(.all)

            ScrollView {
                VStack(alignment: .leading) {
                    HStack {
                        Text("My Timetable")
                            .font(AppFont.largeBold)

                        Spacer()

                        Button(action: {
                            // Add your calendar action here
                            print("Calendar Tapped!")
                        }) {
                            Image(systemName: "calendar")
                                .foregroundColor(.black)
                                .font(.system(size: 30))
                                .clipped()
                        }
                    }
                    .padding(.bottom, 15)

                    Text("Today")
                        .font(AppFont.mediumSemiBold)
                        .padding()

                    ForEach(todayClasses, id: \.self) { timetableClass in
                        TimeTableCardSwiftUIView(
                            className: timetableClass.className,
                            tutorName: timetableClass.tutorName,
                            classStartTime: timetableClass.classStartTime,
                            classEndTime: timetableClass.classEndTime
                        )
                    }

                    Text("Tomorrow")
                        .font(AppFont.mediumSemiBold)
                        .padding()

                    ForEach(tomorrowClasses, id: \.self) { timetableClass in
                        TimeTableCardSwiftUIView(
                            className: timetableClass.className,
                            tutorName: timetableClass.tutorName,
                            classStartTime: timetableClass.classStartTime,
                            classEndTime: timetableClass.classEndTime
                        )
                    }
                }
                .padding()
            }
            .clipShape(RoundedRectangle(cornerRadius: 0, style: .continuous))
            .navigationBarTitle("Timetable", displayMode: .inline)
        }
        //.background(gradientBackground())
        .background(
            VStack{
                accentClassViewHeader()
                    .edgesIgnoringSafeArea(.top)
                    .offset(y: -150)
                Spacer()
            }
        )
        .background(Color.background)
    }

    // Filter classes for today
    private var todayClasses: [TimetableClass] {
        return filterClasses(for: Date())
    }

    // Filter classes for tomorrow
    private var tomorrowClasses: [TimetableClass] {
        return filterClasses(for: Date().addingTimeInterval(24 * 60 * 60)) // Adding one day (24 hours)
    }

    // Helper function to filter classes based on a given date
    private func filterClasses(for date: Date) -> [TimetableClass] {
        return allClasses.filter { timetableClass in
            let calendar = Calendar.current
            return calendar.isDate(timetableClass.classStartTime, inSameDayAs: date)
        }
    }
}

struct MyTimetablePageSwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        MyTimetablePageSwiftUIView(allClasses: [
            TimetableClass(
                id: UUID(),
                className: "Math",
                tutorName: "John Doe",
                classStartTime: Date(),
                classEndTime: Date().addingTimeInterval(3600)
            ),
            TimetableClass(
                id: UUID(),
                className: "History",
                tutorName: "Jane Smith",
                classStartTime: Date().addingTimeInterval(86400),
                classEndTime: Date().addingTimeInterval(90000)
            ),
            // Add more sample classes as needed
        ])
    }
}
