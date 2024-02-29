import SwiftUI

struct classPreviewCard: View{
    var classData : classMockData
  
    var body: some View{
        VStack(alignment: .leading){
            HStack{
                //Image(systemName: "person.crop.square")
                Image(classData.studentsData.diffClassType.tutorImage)
                    .resizable()
                    .clipped()
                    .frame(width: 85, height: 85)
                    .cornerRadius(50)
                    .padding(.trailing, 5)
                VStack(alignment: .leading){
                    Text("\(classData.studentsData.className)")
                        .font(AppFont.mediumSemiBold)
                    
                    Text("by \(classData.studentsData.diffClassType.tutorName)")
                        .font(AppFont.smallReg)
                    
                    //4.5 stars and 40 reviews
                    HStack{
                        Text("\(classData.studentsData.diffClassType.tutorRating, specifier: "%.1f") ⭐️")
                            .font(AppFont.smallReg)
                            .padding([.top, .bottom], 4)
                            .padding([.leading, .trailing], 8)
                            .background(.white)
                            .cornerRadius(50)
                            .shadow(color: .black.opacity(0.05), radius: 10, x: 0, y: 12)
                        Text("\(classData.studentsData.diffClassType.reviewCount) reviews")
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
                Image("location")
                    .resizable()
                    .frame(width: 20, height: 20)
                Text("\(classData.studentsData.diffClassType.tutorAddress)")
            }
            
            HStack{
                Image(systemName: "phone.fill")
                    .font(.system(size: 20))
                Text("\(classData.studentsData.diffClassType.tutorPhone)")
                    .font(AppFont.actionButton)
            }
            .padding([.top, .bottom], 4)
            .padding([.leading, .trailing], 12)
            .background(Color.phoneAccent)
            .cornerRadius(50)
            
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
            
            
            
            //Spacer()
            
            
            
        }
        .frame(maxWidth: .infinity, maxHeight: 170)
        .padding()
        .foregroundStyle(Color.black)
        .background(.accent)
        .cornerRadius(20)
    }
}

#Preview {
    classPreviewCard(classData: classesMockData.sampleClassData)
}
