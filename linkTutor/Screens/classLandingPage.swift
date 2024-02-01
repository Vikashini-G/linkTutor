import SwiftUI

//VStack{
//    accentClassViewHeader()
//    Spacer()
//}
//.offset(y: -50)
//.edgesIgnoringSafeArea(.top)

struct classLandingPage: View{
    var className: String
    var tutorName: String
    var tutorRating: Double
    var reviewCount: Int
    var tutorPhone: String
    var aboutParagraph: String
    var body: some View{
        ZStack{
            
            VStack{
                //Header
                HStack{
                    VStack(alignment: .leading){
                        Text("\(className)")
                            .font(AppFont.largeBold)
                        Text("by \(tutorName)")
                            .font(AppFont.mediumReg)
                    }
                    Spacer()
                }
                
                
                ScrollView(.vertical){
                    Text("")
                    //rating & review count
                    HStack{
                        Text("\(tutorRating, specifier: "%.1f") ⭐️")
                            .font(AppFont.smallReg)
                            .padding([.top, .bottom], 4)
                            .padding([.leading, .trailing], 8)
                            .background(.white)
                            .cornerRadius(50)
                            .shadow(color: .black.opacity(0.05), radius: 10, x: 0, y: 12)
                        Text("\(reviewCount) reviews")
                            .font(AppFont.smallReg)
                            .padding(.leading)
                            .foregroundColor(.gray)
                        Spacer()
                    }
                    
                    //enroll button
                    HStack{
                        Button(action: {
                            print("Enrollment action")
                        }) {
                            Text("Enroll now")
                                .font(AppFont.mediumReg)
                                .foregroundColor(.black)
                                .padding(10)
                                .padding([.leading, .trailing], 20)
                        }
                        .background(Color.enrollButton)
                        .cornerRadius(20)
                        .padding([.top,.bottom], 10)
                        
                        Spacer()
                    }
                    //.shadow(color: .green.opacity(0.3), radius: 20, x: 0, y: 10)
                    
                    //quickInfoBox
                    quickInfoCard(tutorAddress: "Fake street name, New York", tutionDays: "Mon-Wed", tutionTiming: "4-5 pm", tutionFee: 2000)
                        .padding([.top,.bottom], 10)
                        .shadow(color: .black.opacity(0.05), radius: 10, x: 0, y: 12)
                    
                    //phone and iMessage option
                    HStack{
                        HStack{
                            Image(systemName: "phone.fill")
                                .font(.system(size: 17))
                            Text("\(tutorPhone)")
                                .font(AppFont.actionButton)
                        }
                        .padding([.top, .bottom], 4)
                        .padding([.leading, .trailing], 12)
                        .background(Color.phoneAccent)
                        .cornerRadius(50)
                        
                        HStack{
                            Image(systemName: "message.fill")
                                .font(.system(size: 17))
                            Text("iMessage")
                                .font(AppFont.actionButton)
                        }
                        .padding([.top, .bottom], 4)
                        .padding([.leading, .trailing], 12)
                        .background(Color.messageAccent)
                        .cornerRadius(50)
                        Spacer()
                    }
                    .padding([.top,.bottom], 10)
                    
                    //about section
                    HStack{
                        VStack(alignment: .leading){
                            Text("About")
                                .font(AppFont.smallSemiBold)
                                .padding(.bottom, 5)
                            Text("\(aboutParagraph)")
                                .font(AppFont.smallReg)
                                .foregroundColor(.gray)
                        }
                        .padding([.top,.bottom], 10)
                        Spacer()
                    }
                    
                    //Mode
                    HStack{
                        VStack(alignment: .leading){
                            Text("Mode")
                                .font(AppFont.smallSemiBold)
                                .padding(.bottom, 5)
                            VStack{
                                HStack{
                                    Image(systemName: "checkmark")
                                        .font(.system(size: 20))
                                    Text("Online")
                                        .font(AppFont.smallReg)
                                        .foregroundColor(.gray)
                                    Spacer()
                                }.padding(5)
                                HStack{
                                    Image(systemName: "checkmark")
                                        .font(.system(size: 20))
                                    Text("Offline")
                                        .font(AppFont.smallReg)
                                        .foregroundColor(.gray)
                                    Spacer()
                                }.padding(5)
                            }
                        }
                        Spacer()
                    }
                    .padding([.top,.bottom], 10)
                    
                    //Offering Classes
                    HStack{
                        VStack(alignment: .leading){
                            Text("Mode")
                                .font(AppFont.smallSemiBold)
                                .padding(.bottom, 5)
                            VStack{
                                HStack{
                                    Image(systemName: "checkmark")
                                        .font(.system(size: 20))
                                    Text("Classical Piano")
                                        .font(AppFont.smallReg)
                                        .foregroundColor(.gray)
                                    Spacer()
                                }
                                .padding(5)
                                HStack{
                                    Image(systemName: "checkmark")
                                        .font(.system(size: 20))
                                    Text("Hindustani")
                                        .font(AppFont.smallReg)
                                        .foregroundColor(.gray)
                                    Spacer()
                                }.padding(5)
                                HStack{
                                    Image(systemName: "checkmark")
                                        .font(.system(size: 20))
                                    Text("Carnatic")
                                        .font(AppFont.smallReg)
                                        .foregroundColor(.gray)
                                    Spacer()
                                }.padding(5)
                            }
                        }
                        Spacer()
                    }
                    .padding([.top,.bottom], 10)
                    
                    //Reviews
                    HStack{
                        VStack(alignment: .leading){
                            Text("Reviews")
                                .font(AppFont.smallSemiBold)
                                .padding(.bottom, 5)
                            reviewCard(reviewRating: "⭐️⭐️⭐️⭐️⭐️", review: "Loved taking their classes!! ")
                            reviewCard(reviewRating: "⭐️⭐️⭐️⭐️⭐️", review: "Loved taking their classes!! ")
                            reviewCard(reviewRating: "⭐️⭐️⭐️⭐️⭐️", review: "Loved taking their classes!! ")
                        }
                        .padding([.top,.bottom], 10)
                        Spacer()
                    }
                    
                    Spacer()
                }
                }
            .padding([.top, .leading, .trailing])
            .background(
                VStack{
                    accentClassViewHeader()
                        .edgesIgnoringSafeArea(.top)
                        .offset(y: -150)
                    Spacer()
                }
            )
            .background(Color.background)
            VStack{
                HStack{
                    VStack(alignment: .leading){
                        Text("\(className)")
                            .font(AppFont.largeBold)
                        Text("by \(tutorName)")
                            .font(AppFont.mediumReg)
                    }
                    Spacer()
                }
                .padding()
                //.shadow(color: .black.opacity(1), radius: 10, x: 0, y: 12)
                
                
                Spacer()
            }
            
        }
    }
}


#Preview {
    classLandingPage(className: "String academy", tutorName: "Barrack Obama",tutorRating: 4.5, reviewCount: 40, tutorPhone: "1234567890", aboutParagraph: "Experienced music teacher offering lessons, fostering skill development and creative growth in a supportive learning environment")
}


