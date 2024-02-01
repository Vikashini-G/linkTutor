import SwiftUI

struct listClassesScreen: View{
    @State private var showActionSheet = false
    @State private var selectedSortOption: SortOption = .lowToHigh
    @State private var selectedPrice: Double = 100.0 // Initial value for the slider
    var skillType: String

    enum SortOption: String, Identifiable {
        case lowToHigh = "Low to High"
        case highToLow = "High to Low"
        var id: String { self.rawValue }
    }
    
    var body: some View{
        ZStack{
//            VStack{
//                accentHeader()
//                Spacer()
//            }
//            .edgesIgnoringSafeArea(.top)
            VStack(alignment: .leading){
                HStack{
                    Text("\(skillType)")
                        .font(AppFont.largeBold)
                    Spacer()
                    Button(action: {
                        showActionSheet.toggle()
                    }){
                        Image(systemName: "line.3.horizontal.decrease")
                            .resizable()
                            .clipped()
                            .frame(width: 25, height: 15)
                            .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                    }
                    .actionSheet(isPresented: $showActionSheet) {
                        ActionSheet(
                            title: Text("Filter Options"),
                            buttons: [
                                .default(Text("Low to High Price")) {
                                    selectedSortOption = .lowToHigh
                                },
                                .default(Text("High to Low Price")) {
                                    selectedSortOption = .highToLow
                                },
                                .cancel(),
                            ]
                        )
                    }
                    //                .confirmationDialog("Select a color", isPresented: true, titleVisibility: .visible) {
                    //                                     Button("Red") {
                    //                                         selection = "Red"
                    //                                     }
                    //
                    //                                     Button("Green") {
                    //                                         selection = "Green"
                    //                                     }
                    //
                    //                                     Button("Blue") {
                    //                                         selection = "Blue"
                    //                                     }
                    //                                 }
                }
                .padding(.bottom, 15)
                
                Text("Relavent results")
                    .font(AppFont.smallReg)
                    .padding(.leading, 10)
                    .foregroundColor(.myGray)
                
                ScrollView(.vertical, showsIndicators: false){
                    VStack(spacing: 10){
                        classPreviewCard(className: "The piano academy", tutorName:"John Doe", tutorRating: 4.5, reviewCount: 40, tutorAddress: "Fake street name, New York", tutorPhone: "1234567890")
                        classPreviewCard(className: "The piano academy", tutorName:"John Doe", tutorRating: 4.5, reviewCount: 40, tutorAddress: "Fake street name, New York", tutorPhone: "1234567890")
                        classPreviewCard(className: "The piano academy", tutorName:"John Doe", tutorRating: 4.5, reviewCount: 40, tutorAddress: "Fake street name, New York", tutorPhone: "1234567890")
                        classPreviewCard(className: "The piano academy", tutorName:"John Doe", tutorRating: 4.5, reviewCount: 40, tutorAddress: "Fake street name, New York", tutorPhone: "1234567890")
                    }
                }.shadow(color: .black.opacity(0.05), radius: 10, x: 0, y: 12)
                
                Spacer()
            }
            .ignoresSafeArea()
            .padding([.top, .trailing, .leading])
            
        }
        .background(
            VStack{
                accentClassViewHeader()
                    .edgesIgnoringSafeArea(.top)
                    .offset(y: -150)
                Spacer()
            }
        )
        .background(Color.background)
    }
}


#Preview {
    listClassesScreen(skillType: "Piano Class")
}


