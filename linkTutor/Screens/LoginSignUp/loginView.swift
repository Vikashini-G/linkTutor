//
//  loginSignUpView.swift
//  linkTutor
//
//  Created by Vikashini G on 01/02/24.
//

import SwiftUI

struct loginView: View {
    @State private var emailAdd = ""
    @State private var password = ""
    var body: some View {
        NavigationStack{
            ZStack{
                VStack{
                    accentLongheader()
                        .edgesIgnoringSafeArea(.top)
                        .offset(y: -150)
                    Spacer()
                }
                VStack{
                    //Linktutor
                    VStack(alignment: .leading){
                        Text("LinkTutor")
                            .fontWeight(.bold)
                            .font(.system(size: 70).weight(.bold))
                            .fontDesign(.rounded)
                            .foregroundColor(.maroonRed)
                        Text("To find your next tutor")
                            .fontWeight(.bold)
                            .font(AppFont.smallReg)
                            .foregroundColor(.maroonRed)
                            .padding(.bottom,25)
                    }
                    .offset(y: 60)
                    
                    //login and signup option
                    HStack{
                        VStack{
                            Text("Login")
                                .font(AppFont.mediumSemiBold)
                                .foregroundStyle(.black)
                            Rectangle()
                                .frame(width: 100, height: 3)
                                .foregroundStyle(Color.blue)
                        }
                        Spacer()
                        VStack{
                            NavigationLink(destination: signUpView()){
                                Text("Sign up")
                                    .font(AppFont.mediumSemiBold)
                                    .foregroundStyle(.black)
                            }
                            Rectangle()
                                .frame(width: 100, height: 3)
                                .foregroundStyle(Color.clear)
                        }
                    }
                    .padding(.horizontal, 50)
                    .offset(y: 130)
                    
                    //login details
                    List{
                        VStack(alignment: .leading){
                            Text("Email address")
                                .font(AppFont.actionButton)
                                .fontDesign(.rounded)
                                .fontWeight(.semibold)
                                .padding(.leading, 10)
                                .foregroundStyle(Color.myGray)
                            TextField("Email addresss", text: $emailAdd)
                                .listRowBackground(Color.background)
                                .textFieldStyle(.plain)
                                .cornerRadius(8)
                                .padding(10)
                        }
                        .listRowBackground(Color.background)
                        VStack(alignment: .leading){
                            Text("Password")
                                .font(AppFont.actionButton)
                                .fontDesign(.rounded)
                                .fontWeight(.semibold)
                                .padding(.leading, 10)
                                .foregroundStyle(Color.myGray)
                            SecureField("Password", text: $password)
                                .cornerRadius(8)
                                .padding(10)
                        }
                        .padding(.top)
                        .listRowBackground(Color.background)
                    }
                    .padding(.top, 20)
                    .offset(y: 150)
                    .listStyle(PlainListStyle())
                    
                    Spacer()
                }
                .padding()
            }
            .background(Color.background)
        }
    }
}

#Preview {
    loginView()
}
