import SwiftUI

struct enrolledClassList: View {
    var enrolledClasses: [enrolledClassDataM] = [
        enrolledClassDataM(className: "Piano Class", tutorName: "Mr. Joe", daysConducted: "Mondays", timing: "3 to 5 pm"),
        enrolledClassDataM(className: "Dancing Class", tutorName: "Mr. Joe", daysConducted: "Mondays & Tuesdays", timing: "4-5pm"),
        enrolledClassDataM(className: "Swimming Class", tutorName: "Mr. Joe", daysConducted: "Mondays & Tuesdays", timing: "4-5pm")
    ]
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false){
            HStack(spacing: 10) {
                ForEach(enrolledClasses){
                    classCard in enrolledClassCard(classCard: classCard)
                }
                
            }
        }
        .padding(.leading)
        .shadow(color: .black.opacity(0.05), radius: 10, x: 0, y: 12)
    }
}

#Preview{
    enrolledClassList()
}
