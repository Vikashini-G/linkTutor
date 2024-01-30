import SwiftUI

struct homeScreen: View{
    var body: some View{
            VStack{
                header(yourName: "Emma")
                    .padding(.horizontal)
                
                //Enrolled classes section
                sectionHeader(sectionName: "Enrolled classes")
                    .padding(.horizontal)
                
                //enrolled classes cards
                ScrollView(.horizontal, showsIndicators: false){
                    HStack(spacing: 10) {
                        enrolledClassCard(className: "Piano Class", tutorName: "Mr. Joe", daysConducted: "Mondays & Tuesdays", timing: "4-5pm")
                        enrolledClassCard(className: "Piano Class", tutorName: "Mr. Joe", daysConducted: "Mondays & Tuesdays", timing: "4-5pm")
                    }
                }
                .padding(.leading)
                .shadow(color: .black.opacity(0.05), radius: 10, x: 0, y: 12)
                
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
            .padding(.top, 10)
            .background(Color.background)
    }
}

#Preview {
    homeScreen()
}
