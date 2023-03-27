//
//  DetailsScreenView.swift
//  Furniture_app
//
//  Created by Pragath on 21/03/23.
//

import SwiftUI

//1st commit

struct DetailsScreenView: View {
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    let HSview = HomeScreenView()
    let ACview = AllCardsView()
    
    var body: some View {
        ZStack {
            Color("Bg")
                .ignoresSafeArea()
                //.navigationBarBackButtonHidden(true)
                .navigationBarItems(leading:
                                        BackButtonDP(action: {
                    presentationMode.wrappedValue.dismiss()
                }))
            VStack{
                Image("chair_\(ACview.$index)")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .edgesIgnoringSafeArea(.top)
                DescriptionView(categories: HSview.$categories, details: ACview.$details, index: ACview.$index)
                .offset(y: -40)
                
            
                
        }
        }.navigationBarBackButtonHidden(true)
}

struct DetailsScreenView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsScreenView()
    }
}

struct BackButtonDP: View {
    let action: ()-> Void
    
    var body: some View {
        Button(action: action) {
            Image(systemName: "chevron.backward")
                .foregroundColor(.black)
        }
    }
}

struct DescriptionView: View {
    
    @Binding var categories: [String]
    @Binding var details: [(String,String)]
    @Binding var index: Int
    var body: some View {
            VStack(alignment: .leading) {
                Text("Luxury Swedian Chair")
                    .font(.title)
                    .fontWeight(.bold)
                HStack(spacing: 4){
                    ForEach(0..<5) { item in
                        Image("star")
                    }
                    Spacer()
                }
                Text("Description")
                    .fontWeight(.medium)
                    .padding(.vertical,10)
                Text("\(details[1].1)")
                
            }
            .padding()
            .background(Color("Bg"))
            .cornerRadius(40)
        }
    }
}
