import SwiftUI

struct reviewCard: View{
    var reviewRating: String
    var review: String
    var body: some View{
        VStack{
            HStack{
                Text("\(reviewRating)")
                Spacer()
                Text(Date(), style: .date)
                    .foregroundStyle(.gray)
            }
            HStack{
                Text("\(review)")
                Spacer()
            }.padding([.top, .bottom], 5)
            Divider()
                .background(Color.black)
        }
    }
}

#Preview {
    reviewCard(reviewRating: "⭐️⭐️⭐️⭐️⭐️", review: "Loved taking their classes!! ")
}
