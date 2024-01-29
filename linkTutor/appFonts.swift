import SwiftUI

enum AppFont {
    static let smallTitle: Font = .system(size: 20, weight: .semibold, design: .rounded)
    static let subTitle: Font = .system(size: 17, weight: .regular, design: .rounded)
    static let actionButton: Font = Font.system(size: 15, weight: .regular, design: .rounded)
}

//struct ContentView: View {
//    var body: some View {
//        VStack {
//            Text("Title")
//                .font(AppFont.title)
//            Text("Subtitle")
//                .font(AppFont.subtitle)
//            // Use AppFont for other text views as needed
//        }
//        .padding()
//    }
//}
//
//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}
