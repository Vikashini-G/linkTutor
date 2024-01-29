import SwiftUI

struct header: View{
    var yourName: String
    var body: some View{
        HStack{
            VStack(alignment: .leading){
                HStack{
                    Text("Hi Emma!").font(.system(size: 36).weight(.bold)).fontDesign(.rounded).foregroundColor(.black).padding(.bottom, 1)
                    Spacer()
                    Image(systemName: "person.circle.fill")
                        .resizable()
                        .clipped()
                        .frame(width: 50, height: 50)
                }
                Text("what are you looking for today?")
                    .font(.system(size: 20)).fontDesign(.rounded).foregroundColor(.black)
            }
            Spacer()

            
        }
    }
}

#Preview {
        header(yourName: "Emma")
}
