import SwiftUI

struct HomeView: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    init() {
      UITabBar.appearance().unselectedItemTintColor = UIColor.gray
    }
    
    var body: some View {
        TabView {
            InteractiveDiceView()
                .tabItem {
                    Label("Dice roll", systemImage: "dice.fill")
                }
            YahtzeeView()
                .tabItem {
                    Label("Yahtzee", systemImage: "3.circle.fill")
                }
            }
        .accentColor(Color.theme.accent)
        .navigationBarTitle("")
        .navigationBarBackButtonHidden(true)
        .navigationBarHidden(true)
  
        }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}


