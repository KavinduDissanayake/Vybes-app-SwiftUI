//
//  ProductDetailsView.swift
//  vybesapp
//
//  Created by administrator on 2023-03-15.
//
import SDWebImageSwiftUI
import SwiftUI

struct ProductDetailsView: View {
    
    var colors = [Color.red, Color.green, Color.blue]
    @State private var currentPage = 0
    
    var productModel:ProducModel
    
    var body: some View {
        
        ZStack{
            
            VStack{
                
                
                VStack{
                    
                    
                    VStack {
                        //
                        
                    }//;HStack
                    .frame(height: 30)
                    
                    DetailsHeader(backPressed:{},cartPressed: {})
                    
                    WebImage(url: URL(string: productModel.images))
                        .placeholder(
                        
                            Image("Oculus-Rift")
                        )
                        .resizable()
                        .resizable()
                        .frame(width: 200,height: 140)
                    
                    
                    VStack {
                        //
                        
                    }//;HStack
                    .frame(height: 30)
                    
                    HStack {
                        ForEach(0..<5) { index in
                            Circle()
                                .fill(currentPage == index ? Color.white : Color.gray)
                                .frame(width: 8, height: 8)
                        }
                    }
                    
                    
                }
                .frame(height: 300)
                //  .background(Color.red)
                
                GeometryReader { geometry in
                    
                    
                    ScrollView(.vertical , showsIndicators: false) {
                        
                        VStack(alignment: .center, spacing: 20) {
                            
                            
                            VStack(spacing: 5) {
                                
                                Rectangle()
                                    .frame(width: 100,height: 2)
                                    .foregroundColor(Color.gray.opacity(0.3))
                                
                                HStack {
                                    Text(productModel.title)
                                        .font(.customFont(.PoppinsSemiBold, 17))
                                    Spacer()
                                }
                                
                                HStack {
                                    Spacer()
                                    Text(productModel.price)
                                        .font(.customFont(.PoppinsSemiBold, 14))
                                }
                                
                                HStack(spacing: 5) {
                                    //rating
                                    RatingView(.constant(productModel.rating))
                                    
                                    Text("\(productModel.rating, specifier: "%.1f")")
                                        .font(.customFont(.PoppinsSemiBold, 12))
                                    
                                    Text(" (\(28) reviews)")
                                        .font(.customFont(.PoppinsSemiBold, 12))
                                    
                                    Spacer()
                                }
                                .padding(.bottom, 16)
                                
                                
                               Text(productModel.description)
                                    .font(.customFont(.PoppinsRegular, 12))
                                
                            }
                            .padding(.horizontal,16)
                            .padding(.vertical,20)
                            
                            HStack(spacing:15) {
                                IconCardView(imageName: "ic_visibility", text: "Improved Optic")
                                
                                IconCardView(imageName: "ic_light_mode", text: "Clear Brightness")
                                
                                IconCardView(imageName: "ic_wifi", text: "Wifi Controllers")
                            }//:HStack
                            
                            
                            Spacer()
                            
                            Button(action: {
                                
                                //
                                
                            }) {
                                Text("Checkout")
                                    .modifier(BtnStyle(color: Color.black))
                            }
                            
                            .padding(.horizontal,16)
                            Spacer()
                            
                        }
                        
                        .frame(minHeight: geometry.size.height)
                        
                    }//:ScrollView
                    .frame(width: geometry.size.width)
                }//;GeometryReader
                .background(Color.white)
                .cornerRadius(30, corners: [.topLeft, .topRight])
                
            }//:VStack
            
            
            
        }//:ZStack
        .background(Color("#007aff"))
        .ignoresSafeArea()
        
    }
}


struct ProductDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailsView(productModel: sampleProduct)
    }
}
