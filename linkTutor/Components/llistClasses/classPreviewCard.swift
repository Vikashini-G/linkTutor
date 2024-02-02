import SwiftUI

struct classPreviewCard: View{
    var classData : classMockData
  
    var body: some View{
        VStack(alignment: .leading){
            HStack{
                //Image(systemName: "person.crop.square")
                Image(classData.tutorImage)
                                .resizable()
                                .clipped()
                                .frame(width: 85, height: 85)
                                .cornerRadius(50)
                                .padding(.trailing ,5)
                VStack(alignment: .leading){
                    Text("\(classData.className)")
                        .font(AppFont.mediumSemiBold)
                    
                    Text("by \(classData.tutorName)")
                        .font(AppFont.smallReg)
                    
                    //4.5 stars and 40 reviews
                    HStack{
                        Text("\(classData.tutorRating, specifier: "%.1f") ⭐️")
                            .font(AppFont.smallReg)
                            .padding([.top, .bottom], 4)
                            .padding([.leading, .trailing], 8)
                            .background(.white)
                            .cornerRadius(50)
                            .shadow(color: .black.opacity(0.05), radius: 10, x: 0, y: 12)
                        Text("\(classData.reviewCount) reviews")
                            .font(AppFont.smallReg)
                            .padding(.leading, 5)
                            .foregroundColor(.gray)
                    }
                    //Spacer()
                    
                }
                Spacer()
                
            }
            
            //tutor address
            HStack{
                Image(systemName: "location")
                    .font(.system(size: 20))
                Text("\(classData.tutorAddress)")
            }
            .padding([.top, .bottom], 1)
            
            //phone and message option
//            HStack{
//
//                .background(Color.phoneAccent)
//
//
//                HStack{
//                    Image(systemName: "message.fill")
//                        .font(.system(size: 17))
//                    Text("iMessage")
//                        .font(AppFont.actionButton)
//                }
//                .padding([.top, .bottom], 4)
//                .padding([.leading, .trailing], 12)
//                .overlay(
//                    RoundedRectangle(cornerRadius: 20)
//                        .stroke(Color.messageAccent, lineWidth: 2)
//                )
//                .cornerRadius(50)
//                .background(Color.messageAccent)
//            }
            
            HStack{
                
                Image(systemName: "phone.fill")
                    .font(.system(size: 17))
                Text("\(classData.tutorPhone)")
                    .font(AppFont.actionButton)
                
              
                
            
            }
            .padding([.top, .bottom], 4)
            .padding([.leading, .trailing], 12)
            .background(Color.phoneAccent)
            .cornerRadius(50)
            
            //Spacer()
            
            
            
        }
        .frame(maxWidth: .infinity, maxHeight: 170)
        .padding()
        .background(.white)
        .cornerRadius(20)
    }
}

#Preview {
    classPreviewCard(classData: classesMockData.sampleClassData)
}
