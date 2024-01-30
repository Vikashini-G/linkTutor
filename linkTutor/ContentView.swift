//
//  ContentView.swift
//  linkTutor
//
//  Created by user2 on 27/01/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            TabView {
                homeScreen()
                    .tabItem {
                        Label("Home", systemImage: "house")
                    }
                searchScreen()
                    .tabItem {
                        Label("Home", systemImage: "magnifyingglass")
                    }
                listClassesScreen(skillType: "Piano Class")
                    .tabItem {
                        Label("sample classes", systemImage: "figure.track.and.field")
                    }
            }
            
        }
    }
}

#Preview {
    ContentView()
}
