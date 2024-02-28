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
        //Form{
            ScrollView(){
                LazyVGrid(columns: columns, spacing: 10){
                    ForEach(1..<6) {index in
                        popularClassCard(classData: classesMockData.classdata[index] , iconName: "book")
                            .onTapGesture {
                                viewModel.selectedFramework = classesMockData.classdata[index]
                            }

                    }
                    
                }
            }
            .navigationTitle("Popular Skill")
            //.shadow(color: .black.opacity(0.3), radius: 10, x: 0, y: 12)
            .padding()
            .fullScreenCover(isPresented: $viewModel.isShowingDetailView) {
                listClassesScreen(classData : viewModel.selectedFramework ?? classesMockData.sampleClassData, isShowingDetailView: $viewModel.isShowingDetailView)
                
            }
        }
    }
}
        
 


#Preview {
    allPopularCard()
}
