//
//  enrolledClassVList.swift
//  linkTutor
//
//  Created by user2 on 12/02/24.
//

import SwiftUI

struct enrolledClassVList: View {
    var classdata : enrolledClassDataM
  
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false){
    
            VStack(spacing: 10) {
                ForEach(enrolledClassMockData.classData){
                    classCard in enrolledClassCardV(classCard: classCard)
                }
                
            }
        }
        .padding()
        .shadow(color: .black.opacity(0.05), radius: 10, x: 0, y: 12)
    }
}

#Preview{
    enrolledClassVList(classdata: enrolledClassMockData.sampleClassData)
}


struct enrolledClassCardV: View{
    var classCard: enrolledClassDataM
    var body: some View{
        VStack{
                VStack(alignment: .leading){
                    Text(classCard.className)
                        .font(AppFont.mediumSemiBold)
                    Text(classCard.tutorName)
                        .font(AppFont.smallReg)
                    Text("Days")
                        .font(AppFont.smallReg)
                        .foregroundColor(.gray)
                        .padding(.top, 1)
                    Text(classCard.daysConducted)
                        .font(AppFont.smallReg)
                    Text("Timing")
                        .font(AppFont.smallReg)
                        .foregroundColor(.gray)
                        .padding(.top, 1)
                    Text(classCard.timing)
                        .font(AppFont.smallReg)
                }
            Spacer()
        }
        .frame(width: 300, height: 150)
        .fixedSize()
        .padding(.vertical, 20)
        .background(.white)
        .cornerRadius(10)
    }
}
