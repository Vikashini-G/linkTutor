//
//  MyTimetablePageSwiftUIView.swift
//  linkTutor
//
//  Created by user2 on 30/01/24.
//

import SwiftUI

struct TimetablePageSwiftUIView: View {
    var body: some View {
        ZStack{
            Color(.background)
                .edgesIgnoringSafeArea(.all)
            
            ScrollView {
                VStack(alignment: .leading) {
                    
                    HStack {
                        Text("My Timetable")
                            .font(.system(size: 36).weight(.bold))
                            .fontDesign(.rounded)
                            .foregroundColor(.black)
                            .padding(.bottom, 1)
                        
                        Spacer()
                        
                        Button(action: {
                            // Add your calendar action here
                            print("Calendar Tapped!")
                        }) {
                            Image(systemName: "calendar")
                                .resizable()
                                .clipped()
                                .frame(width: 45, height: 45)
                                .foregroundColor(Color.black)
                        }
                    }
                    
                    Text("Today").font(AppFont.smallReg)
                    
                    TimeTableCardSwiftUIView(className: "Archery class", tutorName: "John Doe", time: "8 To 10 am")
                    
                    TimeTableCardSwiftUIView(className: "Archery class", tutorName: "John Doe", time: "8 To 10 am")
                    
                    Text("Tomorrow").font(AppFont.mediumSemiBold)
                    
                    TimeTableCardSwiftUIView(className: "Archery class", tutorName: "John Doe", time: "8 To 10 am")
                    
                    TimeTableCardSwiftUIView(className: "Archery class", tutorName: "John Doe", time: "8 To 10 am")
                    
                    TimeTableCardSwiftUIView(className: "Archery class", tutorName: "John Doe", time: "8 To 10 am")
                    
                    TimeTableCardSwiftUIView(className: "Archery class", tutorName: "John Doe", time: "8 To 10 am")
                    
                }
                .padding()
            }
            .shadow(color: .black.opacity(0.05), radius: 10, x: 0, y: 12)
            .clipShape(RoundedRectangle(cornerRadius: 0, style: .continuous))
            .navigationBarTitle("Timetable", displayMode: .inline
            )
            }
        }
    }

struct TimetablePageSwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        TimetablePageSwiftUIView()
    }
}
