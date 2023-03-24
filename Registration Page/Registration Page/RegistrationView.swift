//
//  RegistrationView.swift
//  Registration Page
//
//  Created by Pragath on 22/03/23.
//

import SwiftUI

struct RegistrationView: View {
    
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var username: String = ""
    
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
                        Text("Register Now")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .padding(.bottom, 30)
                        
                        
                        SocalLoginButton(image: Image(uiImage: UIImage(imageLiteralResourceName: "apple")), text: Text("Register with Apple"))
                            .shadow(radius: 2)
                        
                        SocalLoginButton(image: Image(uiImage: UIImage(imageLiteralResourceName: "google")), text: Text("Register with Google").foregroundColor(Color("Primary")))
                            .padding(.vertical)
                            .shadow(radius: 2)
                        
                        Text("or")
                            .foregroundColor(Color.black.opacity(0.4))
                        
                        
                        TextField("Username", text: $username)
                            .foregroundColor(.black)
                            .padding()
                            .padding(.horizontal,20).background(.white)
                            .cornerRadius(50)
                            .shadow(radius: 2)
                        
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
                        
                        PrimaryButton(title: "Register")
                        
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


struct RegistrationView_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationView()
    }
}
