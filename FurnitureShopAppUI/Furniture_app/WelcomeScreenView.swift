

import SwiftUI

struct WelcomeScreenView: View {
    var body: some View {
        NavigationView {
            ZStack{
                Image("app-background")
                    .resizable()
                    .overlay(LinearGradient(gradient: Gradient(colors: [Color.black.opacity(0.45), Color.black.opacity(0.80)]), startPoint: .topLeading, endPoint: .bottomTrailing))
                    .ignoresSafeArea()
                
                ContentView()
            }
        }
    }
}

struct WelcomeScreenView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeScreenView()
    }
}

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading){
            
            Text("Make Your")
                .font(.title)
                .fontWeight(.light)
                .foregroundColor(.white)
            
            Text("House Look ExtraOrdinary")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(.white)
            
            
            Spacer()
            HStack{
                Spacer()
                NavigationLink("Next".uppercased(), destination: HomeScreenView())
                    .foregroundColor(.black)
                    .padding()
                    .padding(.horizontal,20)
                    .background(
                        Capsule()
                            .fill(.white)
                            .shadow(radius: 50)
                    )
            }
  
        }.frame(maxWidth: .infinity)
            .padding()
            .padding(.top,50)
    }
}
