//
//  HomeScreenView.swift
//  Furniture_app
//
//  Created by Pragath on 21/03/23.
//

import SwiftUI

struct HomeScreenView: View {
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    @State private var selectedIndex = 0
    
    @State var categories = ["All", "Chair", "Sofa", "Lamp", "Kitchen", "Table"]
    @State var details = [("1","data aaaaaaaa"),("2","data bbbbbbbbb"),("3","data cccccccc"),("4","data ddddddddd")]
    
    var body: some View {
        NavigationView{
            
            ZStack {
                Color("Bg")
                    .ignoresSafeArea()
                    .navigationBarItems(leading:
                                            BackButton(action: {
                        presentationMode.wrappedValue.dismiss()
                    }))
                
                ScrollView(showsIndicators: false){
                    VStack(alignment: .leading){
                        TagLine()
                            .padding()
                        
                        SearchView()
                            .padding()
                        ScrollView(.horizontal, showsIndicators: false){
                            HStack{
                                ForEach(0..<categories.count){item in
                                    CategoryView( isActive: item == selectedIndex, text: categories[item])
                                        .onTapGesture {
                                            selectedIndex = item
                                        }
                                }
                            }
                        }
                        .padding()
                            SectionHeaderView(text: Text("Popular"))
                            AllCardsView()
                            SectionHeaderView(text: Text("Best"))
                            AllCardsView()
                        
                        
                    }
                    .frame(maxWidth: .infinity)
                }
            }
        }.navigationBarBackButtonHidden(true)
    }
}

struct HomeScreenView_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreenView()
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



