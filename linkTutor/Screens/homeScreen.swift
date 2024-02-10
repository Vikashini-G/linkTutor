import SwiftUI

struct homeScreen: View{
    var body: some View{
        
        NavigationStack{
            
            VStack{
                VStack{
                    ZStack(alignment: .top){
                        Rectangle()
                            .frame(width: .infinity, height: 60)
                            .foregroundStyle(Color.accent)
                        VStack{
                            header(yourName: "Emma")
                                .padding(.bottom)
                            HStack{
                                Image(systemName: "magnifyingglass")
                                    .foregroundStyle(Color.myGray)
                                Text("Skills, tutors, centers...")
                                    .foregroundStyle(Color.myGray)
                                Spacer()
                            }
                            .padding(3)
                            .frame(width: .infinity, height: 35)
                            .background(Color.searchBarBg.opacity(0.6))
                            .cornerRadius(8)
                            
                        }
                        .padding(.horizontal)
                        .padding(.bottom, 20)
                        .background(Color.accent)
                        .cornerRadius(40)
                    }
                }
                    VStack{
                        //Enrolled classes section
                        sectionHeader(sectionName: "Enrolled classes")
                            .padding(.horizontal)
                        
                        //enrolled classes cards
                        enrolledClassList()
                        
                        
                        //Explore skills section
                        sectionHeader(sectionName: "Explore skills!")
                            .padding(.horizontal)
                        
                        //popular classes cards
                        ScrollView(.horizontal, showsIndicators: false){
                            HStack(spacing: 10) {
                                popularClassCard(className: "Spoken English", tutorName: "John Doe", iconName: "book")
                                popularClassCard(className: "Swimming", tutorName: "John Doe", iconName: "swimming")
                                popularClassCard(className: "Spoken English", tutorName: "John Doe", iconName: "book")
                            }
                        }
                        .padding(.leading)
                        
                        Spacer()
                    }
                    
                    Spacer()
                    
                
            }
//            .background(
//                VStack{
//                    accentClassViewHeader()
//                        .ignoresSafeArea(.all, edges: .top)
//                    Spacer()
//                }
//            )
            .background(Color.background)
        }
        .overlay(alignment: .top) {
            Color.accent // Or any view or color
                .background(.regularMaterial) // I put clear here because I prefer to put a blur in this case. This modifier and the material it contains are optional.
                .ignoresSafeArea(edges: .top)
                .frame(height: 0) // This will constrain the overlay to only go above the top safe area and not under.
        }
    }
    
}

#Preview {
    homeScreen()
}
