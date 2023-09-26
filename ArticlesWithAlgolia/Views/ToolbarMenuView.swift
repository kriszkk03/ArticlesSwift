import SwiftUI

struct ToolbarMenuView: View {
    @EnvironmentObject var userAuthModel: UserAuthModel
    
    var body: some View {
            Menu {
                Section("User data") {
                    Button(action: {}) {
                        Text("Name: \n\(userAuthModel.givenName)")
                            .foregroundColor(.black)
                            .multilineTextAlignment(.leading)
                    }
                    Button(action: {}) {
                        Text("Email: \n\(userAuthModel.givenEmail)")
                            .foregroundColor(.green)
                            .multilineTextAlignment(.leading)
                    }
                }
                Section("Admin") {
                    Button(action: {}) {
                        Text("Go to article admin page")
                            .foregroundColor(.green)
                            .multilineTextAlignment(.leading)
                    }
                }
            } label: {
                HStack {
                    AsyncImage(url: URL(string: userAuthModel.profilePicUrl)) { image in
                        if let img = image.image {
                            img
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .clipShape(Circle())
                                

                        }
                    }
                    .frame(width: 25, height: 25)
                    .padding(.leading, 5)
                    Text("Profile")
                        .foregroundColor(.black)
                }
            }
        }
}

struct AuthFlowContentView_Previews: PreviewProvider {
    static var previews: some View {
        ToolbarMenuView()
    }
}
