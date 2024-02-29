//
//  allPopularCard.swift
//  linkTutor
//
//  Created by user2 on 11/02/24.
//

import SwiftUI

struct allPopularCard: View {
    
    @StateObject var viewModel = listClassesScreenModel()
    
    
    let columns : [GridItem] = [GridItem(.flexible()) ,GridItem(.flexible())]
    
    var body: some View {
        NavigationView(){
            VStack{
                HStack{
                    Text("Explore skills!")
                        .font(AppFont.largeBold)
                    Spacer()
                }
                ScrollView(){
                    LazyVGrid(columns: columns, spacing: 10){
                        ForEach(1..<6) {index in
                            popularClassCardV(classData: classesMockData.classdata[index] , iconName: "book")
                                .onTapGesture {
                                    viewModel.selectedFramework = classesMockData.classdata[index]
                                }
                            
                        }
                        
                    }
                }
            }
            .padding()
            .edgesIgnoringSafeArea(.bottom)
            .background(Color.background)
            .environment(\.colorScheme, .dark)
            .fullScreenCover(isPresented: $viewModel.isShowingDetailView) {
                listClassesScreen(classData : viewModel.selectedFramework ?? classesMockData.sampleClassData, isShowingDetailView: $viewModel.isShowingDetailView)
                
            }
        }
    }
}

#Preview {
    allPopularCard()
}

struct popularClassCardV: View{
    var classData : classMockData
    var iconName: String
    var body: some View{
        VStack{
            
            //class
            Text("\(classData.skillType)")
                .font(AppFont.mediumSemiBold)
                .scaledToFit()
                //.minimumScaleFactor(0.6)
                    
//            //tutor
//            Text("by \(classData.studentsData.diffClassType.tutorName)")
//                .font(AppFont.smallReg)
//                .scaledToFit()
//                //.minimumScaleFactor(0.6)
                
            //icon
            Image("\(iconName)")
                .resizable()
                .frame(width: 80, height: 80)
            
        }
        .frame(width: 170, height: 140)
        .foregroundColor(.black)
        .background(Color.accent)
        .cornerRadius(20)
    }
}
