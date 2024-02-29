//
//  linkTutorApp.swift
//  linkTutor
//
//  Created by user2 on 27/01/24.
//

import SwiftUI

@main
struct linkTutorApp: App {
    
    init(){
        if #available(iOS 15.0, *) {
            let appearance = UITabBarAppearance()
            appearance.selectionIndicatorTintColor = UIColor.green
            
//            appearance.configureWithTransparentBackground()
//
//            // Customize appearance properties here
//            appearance.backgroundColor = UIColor.systemBackground
//            //appearance.stackedLayoutAppearance.normal.iconColor = .systemBlue
//            appearance.stackedLayoutAppearance.normal.titleTextAttributes = [.foregroundColor: UIColor.systemBlue]

            UITabBar.appearance().scrollEdgeAppearance = appearance
        }

    }
    var body: some Scene {
        WindowGroup {
            onboardingPageSwiftUIView()
        }
    }
}

