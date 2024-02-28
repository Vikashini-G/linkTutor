import SwiftUI

struct listClassesScreen: View{
    @State private var showActionSheet = false
    @State private var selectedSortOption: SortOption = .lowToHigh
    @State private var selectedPrice: Double = 100.0 // Initial value for the slider
    var classData : classMockData
    
    @Binding var isShowingDetailView : Bool

    enum SortOption: String, Identifiable {
        case lowToHigh = "Low to High"
        case highToLow = "High to Low"
        var id: String { self.rawValue }
    }
    
    var body: some View{
        NavigationView {
            ZStack{
//                VStack{
//                    
//                    accentHeader()
//                    Spacer()
//                }
//                .ignoresSafeArea()
                VStack(alignment: .leading){
                    HStack{
                        
                        Button {
                            isShowingDetailView = false
                        } label : {
                            Image(systemName: "arrow.backward")
                                .foregroundColor(Color(.label))
                                .imageScale(.large)
                                .frame(width : 44 , height : 44) // we increase the touch target if user click on the side of x then also it will responds
                        }
                        
                        
                        Text("\(classData.skillType)")
                            .font(AppFont.largeBold)
                        Spacer()
                        Button(action: {
                            showActionSheet.toggle()
                        }){
                            Image(systemName: "line.3.horizontal.decrease")
                                .resizable()
                                .clipped()
                                .frame(width: 25, height: 15)
                                .foregroundColor(.blue)
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
                    }
                    .padding(.bottom, 15)
                    
                    Text("Relavent results")
                        .font(AppFont.mediumReg)
                        .padding(.leading, 10)
                        .foregroundColor(.gray)
                    
                    ScrollView(.vertical, showsIndicators: false){
                        VStack(spacing: 10){
                            //Taking value from classesMockData
//                            ForEach(classesMockData.classdata) { classesData in
//                                classPreviewCard(classData: classesData)
//                            }
//
                           
                            ForEach(classesMockData.classdata.filter { $0.skillType == "\(classData.skillType)" }) { classesData in
                                classPreviewCard(classData: classesData)
                            }
                            
                        }
                    }
                    //.shadow(color: .black.opacity(0.05), radius: 10, x: 0, y: 12)
                    
                    Spacer()
                }
                .ignoresSafeArea()
                .padding([.top, .trailing, .leading])
                .background(Color.background)
                
            }
            .background(Color.white)
        }
    }
}


#Preview {
    listClassesScreen(classData: classesMockData.sampleClassData, isShowingDetailView: .constant(false) )
}
