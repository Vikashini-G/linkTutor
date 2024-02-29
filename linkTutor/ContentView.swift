
import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            TabView {
                
                homeScreen()
                    .tabItem {
                        Label("Home", systemImage: "house")
                            .padding(.top)
                    }
                searchScreen()
                    .tabItem {
                        Label("Search", systemImage: "magnifyingglass")
                    }
                MyTimetablePageSwiftUIView(allClasses: [
                    TimetableClass(
                        id: UUID(),
                        className: "Math",
                        tutorName: "John Doe",
                        classStartTime: Date(),
                        classEndTime: Date().addingTimeInterval(3600)
                    ),
                    TimetableClass(
                        id: UUID(),
                        className: "History",
                        tutorName: "Jane Smith",
                        classStartTime: Date().addingTimeInterval(86400),
                        classEndTime: Date().addingTimeInterval(90000)
                    ),
                    // Add more sample classes as needed
                ])
                    .tabItem {
                        Label("My Timetable", systemImage: "calendar")
                    }
            }
            .accentColor(Color.accent)
        }
        //.navigationBarHidden(false)
        .preferredColorScheme(.dark)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


////
////  ContentView.swift
////  linkTutor
////
////  Created by user2 on 27/01/24.
////
//
//import SwiftUI
//
////extension UITabBarController {
////    open override func viewWillLayoutSubviews() {
////       super.viewWillLayoutSubviews()
////       self.tabBar.layer.masksToBounds = true
////       self.tabBar.layer.cornerRadius = 50 // whatever you want
////       self.tabBar.layer.maskedCorners = [.layerMinXMinYCorner,.layerMaxXMinYCorner] // only the top right and left corners
////    }
////}
//
//struct ContentView: View {
////    init() {
////        UITabBar.appearance().backgroundColor = UIColor.accent
////        UITabBar.appearance().unselectedItemTintColor = UIColor
////    }
//    var body: some View {
//        VStack{
//            TabView {
//                homeScreen()
//                    .tabItem {
//                        Label("Home", systemImage: "house")
//                            .padding(.top)
//                    }
//                searchScreen()
//                    .tabItem {
//                        Label("Home", systemImage: "magnifyingglass")
//                    }
//                TimetablePageSwiftUIView()
//                    .tabItem {
//                        Label("My timetable", systemImage: "calendar")
//                    }
//            }
//        }
//    }
//}
//
//#Preview {
//    ContentView()
//}

//
//  ContentView.swift
//  linkTutor
//
//  Created by user2 on 27/01/24.
//
