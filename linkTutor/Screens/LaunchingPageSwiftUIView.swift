//  launchingPageSwiftUIView.swift
//  linkTutor
//
//  Created by user2 on 30/01/24.
//
import SwiftUI

struct LaunchingPageSwiftUIView: View {
    var body: some View {
        
        ZStack{
            Color(.background)
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
            VStack {
                Spacer()
                
                FeatureRow(imageName: "house.fill", title: "Explore Your Skills", description: "Discover and enhance your abilities.")
                
                Spacer()
                
                FeatureRow(imageName: "calendar", title: "Manage Your Timetable", description: "Access and organize your schedule with ease.")
                
                Spacer()
                
                FeatureRow(imageName: "person.circle.fill", title: "Personal Details", description: "View and update your personal information.")
                
                Spacer()
                
                FeatureRow(imageName: "magnifyingglass", title: "Find a Tutor", description: "Discover the perfect tutor for your needs.")
                
                Spacer()
                
                Button(action: {
                    // Add your button action here
                    print("Button Tapped!")
                }) {
                    Text("Continue")
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.blue)
                        .cornerRadius(8)
                }
                .padding(.bottom, 20)
            }
            .padding()
        }
    }
    }

struct FeatureRow: View {
    var imageName: String
    var title: String
    var description: String
    
    var body: some View {
        HStack {
            Image(systemName: imageName)
                .resizable()
                .clipped()
                .frame(width: 50, height: 50)
                .foregroundColor(.blue)
            
            VStack(alignment: .leading, spacing: 5) {
                Text(title)
                    .font(.headline)
                    .foregroundColor(.black)
                
                Text(description)
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }
            
            Spacer()
        }
        .padding(.vertical, 10)
    }
}

struct LaunchingPageSwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        LaunchingPageSwiftUIView()
    }
}


