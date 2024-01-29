import SwiftUI

struct searchScreen: View{
    @State var searchText = "hii"
    var body: some View{
//        NavigationStack{ Text("Searching for").navigationTitle("Search skills") }.searchable(text: $searchText)
        NavigationStack{ Text("Searching for").navigationTitle("Search skills") }.searchable(text: $searchText)
            
    }
}

#Preview {
    searchScreen()
}
