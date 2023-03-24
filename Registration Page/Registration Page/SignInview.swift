//
//  ContentView.swift
//  Registration Page
//
//  Created by Pragath on 22/03/23.
//

import SwiftUI

struct SignInView: View {
    @State private var email: String = ""
    @State private var password: String = ""
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    var body: some View {
        NavigationView{
            ZStack {
                Image("app-background")
                    .resizable()
                
                    .edgesIgnoringSafeArea(.all)
                    .overlay(LinearGradient(gradient: Gradient(colors: [Color.black.opacity(0.45), Color.black.opacity(0.80)]), startPoint: .topLeading, endPoint: .bottomTrailing))
                    .navigationBarItems(leading:
                                            BackButton(action: {
                        presentationMode.wrappedValue.dismiss()
                    }))
                
                VStack {
                    Spacer()
                    
                    VStack {
                        Text("Sign In")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .padding(.bottom, 30)
                        
                        SocalLoginButton(image: Image(uiImage: UIImage(imageLiteralResourceName: "apple")), text: Text("Sign in with Apple"))
                            .shadow(radius: 2)
                        
                        SocalLoginButton(image: Image(uiImage: UIImage(imageLiteralResourceName: "google")), text: Text("Sign in with Google").foregroundColor(Color("Primary")))
                            .padding(.vertical)
                            .shadow(radius: 2)
                        
                        Text("or")
                            .foregroundColor(Color.black.opacity(0.4))
                        
                        TextField("Work email address", text: $email)
                            .foregroundColor(.black)
                            .padding()
                            .padding(.horizontal,20)
                            .background(.white)
                            .cornerRadius(50)
                            .shadow(radius: 2)

                        
                        TextField("Password", text: $password)
                            .foregroundColor(.black)
                            .padding()
                            .padding(.horizontal,20)
                            .background(.white)
                            .cornerRadius(50)
                            .shadow(radius: 2)
                        
                        PrimaryButton(title: "Sign In")
                        
                    }
                    
                    .padding()
                    .padding(.bottom,30)
                    .background(.white)
                    .cornerRadius(40)
                    .frame(maxWidth: .infinity)
                    .offset(y: 40)
                    
                }
            }
        }.navigationBarBackButtonHidden(true)
    }
}

struct SignInView_Previews: PreviewProvider {
    static var previews: some View {
        SignInView()
    }
}

struct BackButton: View {
    let action: ()-> Void
    
    var body: some View {
        Button(action: action) {
            Image(systemName: "chevron.backward")
                .foregroundColor(.black)
        }
    }
}

