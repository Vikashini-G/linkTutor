import SwiftUI

struct enrolledClassCard: View{
    var className: String
    var tutorName: String
    var daysConducted: String
    var timing: String
    var body: some View{
        ZStack{
//            Rectangle()
//            .frame(width: 218, height: 176)
//            .background(.white).cornerRadius(10)
//            .shadow(color: .black.opacity(0.05), radius: 10, x: 0, y: 12)
//            .foregroundColor(.yellow)
                VStack(alignment: .leading){
                    Text("\(className)")
                        .font(AppFont.smallTitle)
                    Text("\(tutorName)")
                        .font(AppFont.subTitle)
                    Text("Days")
                        .font(AppFont.subTitle)
                        .foregroundColor(.gray)
                        .padding(.top, 1)
                    Text("\(daysConducted)")
                        .font(AppFont.subTitle)
                    Text("Timing")
                        .font(AppFont.subTitle)
                        .foregroundColor(.gray)
                        .padding(.top, 1)
                    Text("\(timing)")
                        .font(AppFont.subTitle)
                }
                .padding(.horizontal, 20)
                .padding(.vertical, 20)
                .background(.white)
                .cornerRadius(10)
                
        }
    }
}

#Preview {
    enrolledClassCard(className: "Piano Class", tutorName: "Mr. Joe", daysConducted: "Mondays & Tuesdays", timing: "4-5pm")
}
