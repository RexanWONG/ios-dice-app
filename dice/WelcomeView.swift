import SwiftUI

struct WelcomeView: View {
    @State var isLightMode: Bool = false
    
    var body: some View {
        NavigationView{
            ZStack{
                (isLightMode ? Color.white : Color.theme.background)
                    .ignoresSafeArea()
                
                
                VStack{
                    
                    ZStack{
                        Rectangle()
                            .foregroundColor(Color.theme.accent)
                            .frame(width:300, height: 300)
                            .cornerRadius(20)
                            .shadow(color: Color.theme.accent, radius: 90, x: 0, y: 10)
                        Circle()
                            .frame(width: 150, height: 150)
                            .foregroundColor(Color.white)
                    }
                    .padding(.bottom, 80)
                    Text("Welcome to dice roller")
                        .font(.title)
                        .foregroundColor(isLightMode ? Color.black : Color.white)
                        .fontWeight(.heavy)
                    NavigationLink(destination: HomeView()) {
                        Text("Start rolling")
                            .bold()
                            .frame(width: 280, height: 50)
                            .foregroundColor(isLightMode ? Color.black : Color.white)
                            .overlay(Capsule().stroke(LinearGradient(
                                gradient: Gradient(colors: [Color.theme.accent, Color.gray, Color.theme.accent]),
                                startPoint: .leading,
                                endPoint: .trailing
                            )))
                            .navigationBarTitle("")
                            .navigationBarHidden(true)
                        
                    }
                    
                }
            }
            .toolbar{
                ToolbarItem(placement: .navigationBarTrailing) {
                    HStack{
                        Button(action: {isLightMode.toggle()}, label: {
                            isLightMode ? Label("Light", systemImage: "lightbulb.fill") : Label("dark", systemImage: "lightbulb")
                        })
                        .foregroundColor(isLightMode ? Color.black : Color.white)
                    }
                    

                }

            }
        }
        
        
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
