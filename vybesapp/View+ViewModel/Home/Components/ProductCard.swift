//
//  ProductCard.swift
//  vybesapp
//
//  Created by administrator on 2023-03-15.
//
import SDWebImageSwiftUI
import SwiftUI

struct ProductCard: View {
    //MARK: - PROPERTIES
    var tapPressed: (()->())?
    var productModel:ProducModel
    var body: some View {
        VStack(alignment: .leading) {
            
            WebImage(url: URL(string: productModel.images))
                .placeholder(
                
                    Image("Oculus-Rift")
                )
                .resizable()
                .scaledToFit()
                .frame(width: 110, height: 110)
               // .background(Color.blue)
                .padding(.vertical, 16)
                .padding(.horizontal, 16)
            Spacer()
            
            VStack(alignment: .leading, spacing: 4){
                Text(productModel.title)
                    .font(.customFont(.PoppinsMedium, 14))
                
                Text(productModel.price)
                    .font(.customFont(.PoppinsMedium, 12))
                    .foregroundColor(.gray)
            }
            .padding(.horizontal, 16)
          
            HStack{
                
                Spacer()
                
                
                Image("ic_plus")
                    .padding(5)
                    .foregroundColor(Color.white)
                    .background( Color.black)
                    .cornerRadius(8, corners: [.topLeft, .bottomRight])

                
            }
            
            
            
        }
        .frame(height: 280)
        .frame(width: 150)
        .background(
            Color("#f4f6f8")
        )
        .cornerRadius(10)
        .onTapGesture {
            tapPressed?()
        }

    
       
    }
}

struct ProductCard_Previews: PreviewProvider {
    static var previews: some View {
        ProductCard(productModel: sampleProduct)
            .previewLayout(.sizeThatFits)
    }
}
