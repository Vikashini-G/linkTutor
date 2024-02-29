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
                            .foregroundColor(.accent)
                            .padding(.bottom,25)
                    }
                    .offset(y: 30)
                    
                    //login and signup option
                    HStack{
                        VStack{
                            NavigationLink(destination: loginView()){
                                Text("Login")
                                    .foregroundColor(.text)
                                    .font(AppFont.mediumSemiBold)
                            }
                            Rectangle()
                                .frame(width: 100, height: 3)
                                .foregroundStyle(Color.clear)
                        }
                        Spacer()
                        VStack{
                            NavigationLink(destination: signUpView()){
                                Text("Sign up")
                                    .foregroundColor(.text)
                                    .font(AppFont.mediumSemiBold)
                            }
                            Rectangle()
                                .frame(width: 100, height: 3)
                                .foregroundStyle(Color.accent)
                        }
                    }
                    .padding(.horizontal, 50)
                    .offset(y: 40)
                    
                    //sign up details
                    List{
                        VStack(alignment: .leading){
                            Text("Email address")
                                .font(AppFont.mediumReg)
                            TextField("Email address", text: $emailAdd)
                                .listRowBackground(Color.background)
                                .textFieldStyle(.plain)
                                .cornerRadius(8)
                        }
                        .listRowBackground(Color.clear)
                        VStack(alignment: .leading){
                            Text("Password")
                                .font(AppFont.mediumReg)
                            SecureField("Password", text: $password)
                                .cornerRadius(8)
                        }
                        .padding(.top)
                        .listRowBackground(Color.clear)
                        VStack(alignment: .leading){
                            Text("Phone number")
                                .font(AppFont.mediumReg)
                            SecureField("Phone number", text: $phoneNumber)
                                .cornerRadius(8)
                        }
                        .padding(.top)
                        .listRowBackground(Color.clear)
                    }
                    .padding(.top)
                    .offset(y: 40)
                    .listStyle(PlainListStyle())
                    
                    //Teacher or stu
                    VStack(alignment: .leading){
                        Text("Register as a")
                            .font(AppFont.mediumSemiBold)
                            .padding(.bottom)
                            .padding(.leading, 20)
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
                            .background(Color.elavated)
                            .foregroundColor(.text)
                            .cornerRadius(20)
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
                            .background(Color.elavated)
                            .foregroundColor(.text)
                            .cornerRadius(20)
                            Spacer()
                        }
                    }
                    .offset(y:-15)
                    .padding(.bottom)
                    
                    
                    //button
                    Button(action: {}) {
                        Text("Sign up")
                            .font(AppFont.mediumSemiBold)
                            .foregroundColor(.black)
                    }
                    .frame(width: 250, height: 35)
                    .padding()
                    .background(Color.accent)
                    .cornerRadius(50)
                    
                    Spacer()
                }
                .padding()
                .background(Color.background)
                .environment(\.colorScheme, .dark)
        }
        .navigationBarBackButtonHidden()
    }
}

#Preview {
    signUpView()
}
