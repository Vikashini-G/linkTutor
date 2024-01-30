//
//  MyTimetablePageSwiftUIView.swift
//  linkTutor
//
//  Created by user2 on 30/01/24.
//

import SwiftUI

struct TimetablePageSwiftUIView: View {
    var body: some View {
        //headerbox
        ZStack{
            VStack{
                accentHeader()
                Spacer()
            }
            .edgesIgnoringSafeArea(.top)
            
            VStack(alignment: .leading) {
                
                //header
                HStack {
                    Text("My Timetable")
                        .font(AppFont.largeBold)
                    
                    Spacer()
                    
                    Button(action: {
                        print("Calendar Tapped!")
                    }) {
                        Image(systemName: "calendar")
                            .foregroundColor(.black)
                            .font(.system(size: 30))
                            .clipped()
                    }
                }
                .padding(.bottom, 15)
                
                //classes
                ScrollView(.vertical, showsIndicators: false){
                    HStack{
                        Text("Today")
                            .font(AppFont.mediumSemiBold)
                            .padding()
                        Spacer()
                    }
                    
                    VStack(spacing: 10){
                        TimeTableCardSwiftUIView(className: "Archery class", tutorName: "John Doe", time: "8 To 10 am")
                        
                        TimeTableCardSwiftUIView(className: "Archery class", tutorName: "John Doe", time: "8 To 10 am")
                    }
                    
                    HStack{
                        Text("Tomorrow")
                            .font(AppFont.mediumSemiBold)
                            .padding()
                        Spacer()
                    }
                    
                    VStack(spacing: 10){
                        TimeTableCardSwiftUIView(className: "Archery class", tutorName: "John Doe", time: "8 To 10 am")
                        
                        TimeTableCardSwiftUIView(className: "Archery class", tutorName: "John Doe", time: "8 To 10 am")
                        
                        TimeTableCardSwiftUIView(className: "Archery class", tutorName: "John Doe", time: "8 To 10 am")
                        
                        TimeTableCardSwiftUIView(className: "Archery class", tutorName: "John Doe", time: "8 To 10 am")
                    }
                }
                .shadow(color: .black.opacity(0.05), radius: 10, x: 0, y: 12)
                
            }
            .padding([.top, .trailing, .leading])
            
            
            
            //.clipShape(RoundedRectangle(cornerRadius: 0, style: .continuous))
            //.navigationBarTitle("Timetable", displayMode: .inline)
        }
        .background(Color.background)
        }
    }

struct TimetablePageSwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        TimetablePageSwiftUIView()
    }
}
