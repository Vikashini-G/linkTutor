import SwiftUI

struct homeScreen: View{
    var body: some View{
        ZStack{
            VStack{
                accentClassViewHeader()
                Spacer()
            }
            .offset(y: -120)
            .edgesIgnoringSafeArea(.top)
            
            VStack{
                header(yourName: "Emma")
                    .padding(.horizontal)
                
                //Enrolled classes section
                sectionHeader(sectionName: "Enrolled classes")
                    .padding(.horizontal)
                
                //enrolled classes cards
                enrolledClassList()
                
                
                //Popular classes section
                sectionHeader(sectionName: "Popular classes in your city!")
                    .padding(.horizontal)
                
                //popular classes cards
                ScrollView(.horizontal, showsIndicators: false){
                    HStack(spacing: 10) {
                        popularClassCard(className: "Spoken English", tutorName: "John Doe", iconName: "book")
                        popularClassCard(className: "Swimming", tutorName: "John Doe", iconName: "swimming")
                        popularClassCard(className: "Spoken English", tutorName: "John Doe", iconName: "book")
                    }
                }
                .shadow(color: .black.opacity(0.1), radius: 10, x: 0, y: 12)
                .padding(.leading)
                
                Spacer()
                
            }
            
        }.padding(.top, 10)
            .background(Color.background)
    }
}

#Preview {
    homeScreen()
}
