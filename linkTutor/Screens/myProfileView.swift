//
//  myProfileView.swift
//  linkTutor
//
//  Created by Vikashini G on 31/01/24.
//

import SwiftUI

struct myProfileView: View {
    
    var body: some View {
        VStack(alignment: .leading){
            HStack{
                Text("My Profile")
                    .font(AppFont.largeBold)
                Spacer()
            }
            
            profileCard(personName: "Fakie Nameiae", personEmail: "fake_email@gmail.com")
                .frame(maxWidth: .infinity, alignment: .center)
                .padding(.top)
            
            List{
                HStack{
                    Text("Change password")
                    Spacer()
                    Image(systemName: "arrow.right")
                }
                HStack{
                    Text("Delete my account")
                    Spacer()
                    Image(systemName: "arrow.right")
                }
                HStack{
                    Text("Notifications")
                    Spacer()
                    Image(systemName: "arrow.right")
                }
            }
            .listStyle(PlainListStyle())
            .padding(.top)
            .frame(maxWidth: .infinity, maxHeight: 200,  alignment: .center)
            
            Button(action: {}) {
                Text("Logout")
                    .font(AppFont.mediumReg)
                    .foregroundStyle(.black)
                    .frame(width: 180, height: 55)
                    .background(Color.accent)
                    .cornerRadius(15)
            }
            .frame(maxWidth: .infinity, alignment: .center)
            
            Spacer()
        }
        .padding()
    }
}

#Preview {
    myProfileView()
}
