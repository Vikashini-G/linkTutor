//
//  profileCard.swift
//  linkTutor
//
//  Created by Vikashini G on 31/01/24.
//

import SwiftUI

struct profileCard: View {
    var personName: String
    var personEmail: String
    
    var body: some View {
        
        HStack{
            Image("dummyProfilePic")
                .resizable()
                .frame(width: 80, height: 90)
                .cornerRadius(10)
            Spacer()
            VStack(alignment: .leading){
                Text("\(personName)")
                    .font(AppFont.mediumSemiBold)
                Text("\(personEmail)")
                    .font(AppFont.actionButton)
                    .foregroundStyle(Color.myGray)
            }
            .padding(.trailing)
            
            Spacer()
            VStack{
                Button(action: {}) {
                    Image(systemName: "pencil")
                        .foregroundColor(.myGray)
                }
                Spacer()
            }
        }
        .padding()
        .frame(width: 350, height: 120)
        .background(.thinMaterial)
        .cornerRadius(20)
        //.background(Color.white.opacity(0.5))
        
        
    }
}

#Preview {
    profileCard(personName: "Fakie Nameiae", personEmail: "fake_email@gmail.com")
}
