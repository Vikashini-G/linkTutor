import SwiftUI

struct enrolledClassCard: View{
    var classCard: enrolledClassDataM
    var body: some View{
        HStack{
                VStack(alignment: .leading){
                    Text(classCard.className)
                        .font(AppFont.mediumSemiBold)
                    Text(classCard.tutorName)
                        .font(AppFont.smallReg)
                    Text("Days")
                        .font(AppFont.smallReg)
                        .foregroundColor(.gray)
                        .padding(.top, 1)
                    Text(classCard.daysConducted)
                        .font(AppFont.smallReg)
                    Text("Timing")
                        .font(AppFont.smallReg)
                        .foregroundColor(.gray)
                        .padding(.top, 1)
                    Text(classCard.timing)
                        .font(AppFont.smallReg)
                }
            Spacer()
        }
        .frame(width: 180, height: 150)
        .padding(.horizontal, 20)
        .padding(.vertical, 20)
        .background(.white)
        .cornerRadius(10)
    }
}

#Preview {
    enrolledClassCard(classCard: enrolledClassDataM(className: "Piano Class", tutorName: "Mr. Joe", daysConducted: "Mondays & Tuesdays", timing: "4-5pm"))
}
