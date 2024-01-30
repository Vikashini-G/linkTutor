import SwiftUI

struct header: View{
    var yourName: String
    var body: some View{
        HStack{
            VStack(alignment: .leading){
                HStack{
                    Text("Hi Emma!")
                        .font(AppFont.largeBold)
                        .padding(.bottom, 1)
                    Spacer()
                    Image(systemName: "person.circle.fill")
                        .resizable()
                        .clipped()
                        .frame(width: 50, height: 50)
                }
                Text("what are you looking for today?")
                    .font(AppFont.mediumReg)
            }
            Spacer()

            
        }
    }
}

#Preview {
        header(yourName: "Emma")
}
