
import Foundation
import SwiftUI

//MARK: struct for first line on home page
struct TagLine: View {
    var body: some View {
        Text("Find the \nbest ")
            .font(.custom("PlayFairDisplay-Regular", size: 28))
            .foregroundColor(Color("Primary"))
        + Text("Furniture!")
            .font(.custom("PlayFairDisplay-Bold", size: 28))
            .foregroundColor(Color("Primary"))
            
    }
}

//MARK: struct for search field and button
struct SearchView: View {
    @State private var search: String = ""
    var body: some View {
        HStack{
            HStack{
                Image("Search")
                    .padding(.trailing,8)
                TextField("Search Furniture", text: $search)
            }
            .padding(.all, 20)
            .background(Color.white)
            .cornerRadius(10)
            .padding(.trailing)
            
            Button(action: {}) {
                Image("Scan")
                    .padding()
                    .background(Color("Primary"))
                    .cornerRadius(10)
            }
        }
    }
}

//MARK: for diplaying all the categories in horizontal
struct CategoryView: View {
    let isActive: Bool
    let text: String
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 0){
            Text(text)
                .font(.system(size: 18))
                .fontWeight(.medium)
                .foregroundColor(isActive ? Color("Primary") : Color.black.opacity(0.5) )
            if(isActive) {
                Color("Primary")
                    .frame(width: 15, height: 1)
                .clipShape(Capsule())
                
            }
        }.padding(.trailing)
    }
}

//MARK: struct for making card
struct ProductCardView: View {
    
    let image: Image
    var body: some View {
        VStack{
            image
                .resizable()
                .frame(width: 210, height: 200)
                .cornerRadius(20)
            Text("Luxury Swedian Chair")
                .font(.title3)
                .fontWeight(.bold)
                .foregroundColor(.black)
            HStack(spacing: 2){
                ForEach(0..<5) { item in
                    Image("star")
                }
                Spacer()
                Text("$1299")
                    .font(.title3)
                    .fontWeight(.bold)
                    .foregroundColor(.black)
            }
            
        }
        .frame(width: 210)
        .padding()
        .background(Color.white)
        .cornerRadius(20)
        .padding(.leading)
    }
}


//MARK: Struct for displaying all cards and secctions in home page
struct SectionHeaderView: View {
    let text: Text
    var body: some View {
        text
            .font(.custom("PlayFairDisplay-Bold", size: 24))
            .padding()
    }
}

struct AllCardsView: View {

    @State var index = 0
    @State var details = [("1","data aaaaaaaa"),("2","data bbbbbbbbb"),("3","data cccccccc"),("4","data ddddddddd")]
    var body: some View {
        ScrollView(.horizontal,showsIndicators: false){
            HStack{
                ForEach(1..<(details.count + 1)){item in
                    NavigationLink(destination: DetailsScreenView()) {
                        ProductCardView(image: Image("chair_\(item)"))
                    }
                }
            }
        }
    }
}
