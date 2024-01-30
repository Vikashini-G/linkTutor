import SwiftUI


struct ProfileInputView: View {
    @State private var email: String = ""
       @State private var password: String = ""
       @State private var phoneNumber: String = ""

    var body: some View {
        ZStack{
            Color(.background)
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
             VStack (alignment: .center, spacing: 10){
                  
                  
                  Spacer().frame(width: 15, height: 15)
                  
                  
                Text("Edit Profile Information")
                    .font(.title2)
                    .fontWeight(.bold)
                  
                  
                  // Photo
                  
                  VStack(alignment: .center, spacing: 20) {
                       
                       Image(systemName: "person.circle.fill")
                            .resizable()
                            .frame(width: 100, height: 100)
                       
                       Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                            Text("Change profile photo")
                                 .foregroundColor(.blue)
                       })
                  }
                      
                  
                  // Image("teacher")
                  // Name TextField
                  TextField("Name", text: $email)
                      .padding()
                      .background(Color(UIColor.systemGray5))
                      .cornerRadius(8)
                      .padding(10)
                  
                
                // Email TextField
                TextField("Email Address", text: $email)
                    .padding()
                    .background(Color(UIColor.systemGray5))
                    .cornerRadius(8)
                    .padding(10)

                    
                    
                
                // Password SecureField
                SecureField("Password", text: $password)
                    .padding()
                    .background(Color(UIColor.systemGray5))
                    .cornerRadius(8)
                    .padding(10)
                
                // Phone Number TextField
                TextField("Phone Number", text: $phoneNumber)
                    .padding()
                    .background(Color(UIColor.systemGray5))
                    .cornerRadius(8)
                    .padding(10)
                  
                
                  // About TextField
                  TextField("About", text: $phoneNumber)
                      .padding()
                      .background(Color(UIColor.systemGray5))
                      .cornerRadius(8)
                      .padding(10)
                    
                
                // Submit Button
                  Spacer().frame(width: 15, height: 15)
               
                    Button(action: {
                        self.submitProfileData()
                    }) {
                        Text("Submit")
                            .frame(width: 200, height: 15)
                            .padding()
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                            .shadow(color: .black.opacity(0.1), radius: 10, x: 0, y: 12)
                    }
                    
                    
                    Spacer()
                
                
               
            }
            .padding()
        }
    }

       func submitProfileData() {
           // Handle submission logic here
           print("Email: \(email)")
           print("Password: \(password)")
           print("Phone Number: \(phoneNumber)")
           // You can perform additional actions here, such as validation or sending data to a server.
       }
   }

   struct ProfileInputView_Previews: PreviewProvider {
       static var previews: some View {
           ProfileInputView()
       }
   }
#Preview {
    ProfileInputView()
}
