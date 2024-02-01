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
                .shadow(color: .black.opacity(0.05), radius: 10, x: 0, y: 12)
                .frame(maxWidth: .infinity, alignment: .center)
                .padding(.top)
            
            List{
                HStack{
                    Text("Change password")
                    Spacer()
                    Image(systemName: "arrow.right")
                }
                .listRowBackground(Color.background)
                HStack{
                    Text("Delete my account")
                    Spacer()
                    Image(systemName: "arrow.right")
                }
                .listRowBackground(Color.background)
                HStack{
                    Text("Notifications")
                    Spacer()
                    Image(systemName: "arrow.right")
                }
                .listRowBackground(Color.background)
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
            .shadow(color: .black.opacity(0.05), radius: 10, x: 0, y: 12)
            .frame(maxWidth: .infinity, alignment: .center)
            
            Spacer()
        }
        .padding()
        .background(Color.background)
    }
}

#Preview {
    myProfileView()
}
