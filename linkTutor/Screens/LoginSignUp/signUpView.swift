//
//  loginSignUpView.swift
//  linkTutor
//
//  Created by Vikashini G on 01/02/24.
//

import SwiftUI

struct signUpView: View {
    @State private var emailAdd = ""
    @State private var password = ""
    @State private var phoneNumber = ""
    var body: some View {
        NavigationStack{
            ZStack{
                VStack{
                    accentHeader()
                        .edgesIgnoringSafeArea(.top)
                        .offset(y: -60)
                    Spacer()
                }
                VStack{
                    //Linktutor
                    VStack(alignment: .leading){
                        Text("LinkTutor")
                            .fontWeight(.bold)
                            .font(.system(size: 50).weight(.bold))
                            .fontDesign(.rounded)
                            .foregroundColor(.maroonRed)
                        Text("To find your next tutor")
                            .fontWeight(.bold)
                            .font(AppFont.smallReg)
                            .foregroundColor(.maroonRed)
                            .padding(.bottom,25)
                    }
                    .offset(y: 30)
                    
                    //login and signup option
                    HStack{
                        VStack{
                            NavigationLink(destination: loginView()){
                                Text("Login")
                                    .font(AppFont.mediumSemiBold)
                                    .foregroundStyle(.black)
                            }
                            Rectangle()
                                .frame(width: 100, height: 3)
                                .foregroundStyle(Color.clear)
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
                                .foregroundStyle(Color.blue)
                        }
                    }
                    .padding(.horizontal, 50)
                    .offset(y: 40)
                    
                    //sign up details
                    List{
                        VStack(alignment: .leading){
                            Text("Email address")
                                .font(AppFont.actionButton)
                                .fontWeight(.semibold)
                                .foregroundStyle(Color.myGray)
                            TextField("Email address", text: $emailAdd)
                                .listRowBackground(Color.background)
                                .textFieldStyle(.plain)
                                .cornerRadius(8)
                        }
                        .listRowBackground(Color.clear)
                        VStack(alignment: .leading){
                            Text("Password")
                                .font(AppFont.actionButton)
                                .fontWeight(.semibold)
                                .foregroundStyle(Color.myGray)
                            SecureField("Password", text: $password)
                                .cornerRadius(8)
                        }
                        .padding(.top)
                        .listRowBackground(Color.clear)
                        VStack(alignment: .leading){
                            Text("Phone number")
                                .font(AppFont.actionButton)
                                .fontWeight(.semibold)
                                .foregroundStyle(Color.myGray)
                            SecureField("Phone number", text: $phoneNumber)
                                .cornerRadius(8)
                        }
                        .padding(.top)
                        .listRowBackground(Color.clear)
                    }
                    .padding(.top)
                    .offset(y: 60)
                    .listStyle(PlainListStyle())
                    
                    //Teacher or stu
                    VStack(alignment: .leading){
                        Text("Register as a")
                            .font(AppFont.smallSemiBold)
                            .padding([.top,.leading])
                        HStack{
                            Spacer()
                            NavigationLink(destination: homeScreen()) {
                                VStack{
                                    Image(systemName: "studentdesk")
                                        .font(.system(size: 50))
                                    Text("Student")
                                        .font(AppFont.smallReg)
                                }
                            }
                            .frame(width: 80, height: 80)
                            .padding()
                            .background(Color.white)
                            .foregroundColor(.black)
                            .cornerRadius(20)
                            .shadow(color: .black.opacity(0.1), radius: 10, x: 0, y: 12)
                            Spacer()
                            NavigationLink(destination: homeScreen()) {
                                VStack{
                                    Image(systemName: "person.bust.fill")
                                        .font(.system(size: 50))
                                    Text("Tutor")
                                        .font(AppFont.smallReg)
                                }
                            }
                            .frame(width: 80, height: 80)
                            .padding()
                            .background(Color.white)
                            .foregroundColor(.black)
                            .cornerRadius(20)
                            .shadow(color: .black.opacity(0.1), radius: 10, x: 0, y: 12)
                            Spacer()
                        }
                    }
                    .padding(.vertical)
                    
                    
                    //button
                    Button(action: {}) {
                        Text("Sign up")
                            .font(AppFont.mediumReg)
                            .foregroundColor(.black)
                    }
                    .frame(width: 250, height: 25)
                    .padding()
                    .background(Color.accent)
                    .cornerRadius(50)
                    .shadow(color: .black.opacity(0.05), radius: 10, x: 0, y: 12)
                    
                    Spacer()
                }
                .padding()
            }
            //.background(gradientBackground())
            .background(Color.background)
        }
    }
}

#Preview {
    signUpView()
}
