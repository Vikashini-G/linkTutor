import SwiftUI

struct popularClassCard: View{
    var className: String
    var tutorName: String
    var iconName: String
//    @State private var colorIndex: Int = 0
//    func getRandomColor() -> Color {
//        let colors: [Color] = [Color("#FFB703"), Color("#14CC92"), Color("#F4AAD5"), Color("#FFA138"), Color("#0ABAFF")]
//        if colorIndex == 4 {
//            colorIndex = 0
//        } else {
//            colorIndex += 1
//        }
//        print(colors[colorIndex])
//        return colors[colorIndex]
//    }
    var body: some View{
        VStack {
        //class
            Text("\(className)")
                .font(AppFont.mediumSemiBold)
            
        //tutor
            Text("by \(tutorName)")
                .font(AppFont.smallReg)
                
        //icon
            Image("\(iconName)")
                .resizable()
                .clipped()
                .frame(width: 80, height: 80)
        }
        .padding([.horizontal, .vertical], 15)
        .background(Color.white)
        .cornerRadius(20)
    }
}

#Preview {
    popularClassCard(className: "Spoken English", tutorName: "John Doe", iconName: "book")
}
