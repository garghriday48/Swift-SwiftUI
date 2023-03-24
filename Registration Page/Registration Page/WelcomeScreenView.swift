//
//  WelcomeScreenView.swift
//  Registration Page
//
//  Created by Pragath on 22/03/23.
//

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
                //Spacer()
                NavigationLink("Sign In", destination: SignInView())
                    .font(.title3)
                    .fontWeight(.bold)
                    .foregroundColor(.black)
                    .padding()
                    .padding(.horizontal,20)
                    .background(
                        Capsule()
                            .fill(.white)
                            .shadow(radius: 50)
                    )
                Spacer()
                NavigationLink("Register", destination: RegistrationView())
                    .font(.title3)
                    .fontWeight(.bold)
                    .foregroundColor(.black)
                    .padding()
                    .padding(.horizontal,20)
                    .background(
                        Capsule()
                            .fill(.white)
                            .shadow(radius: 50)
                    )
            }
            .padding()
  
        }.frame(maxWidth: .infinity)
            .padding()
            .padding(.top,50)
    }
}
