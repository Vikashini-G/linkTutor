import SwiftUI

struct sectionHeader: View{
    var sectionName: String
    var body: some View{
        HStack{
            Text("\(sectionName)")
                .font(AppFont.smallTitle)
            Spacer()
            Text("View more")
                .font(AppFont.actionButton)
                .foregroundColor(.blue)
        }
        .padding(.top, 30)
        .padding(.bottom, 15)
    }
}

#Preview {
    sectionHeader(sectionName: "Sample section")
}
