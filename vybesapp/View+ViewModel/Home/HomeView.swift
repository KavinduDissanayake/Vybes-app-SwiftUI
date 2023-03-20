//
//  HomeView.swift
//  vybesapp
//
//  Created by administrator on 2023-03-15.
//

import SwiftUI




struct HomeView: View {
    
    @StateObject var viewModel = HomeVM()
    
    var body: some View {
        ZStack{
            VStack{
                
                //top navigation bar
                HomeHeaderView {
                    //
                } searchPressed: {
                    //
                } cartPressed: {
                    //
                }
                
                
                GeometryReader { geometry in
                    
                    
                    ScrollView(.vertical , showsIndicators: false) {
                        
                        VStack(alignment: .center, spacing: 30) {
                            
                            //topic
                            HStack {
                                Text("Enjoy the world into\nvirtual reality")
                                    .font(.customFont(.PoppinsSemiBold, 20))
                                    .multilineTextAlignment(.leading)
                                Spacer()
                            }
                            
                            TopBannerView()
                            
                            
        
                            //categories
                            ScrollView(.horizontal, showsIndicators: false) {
                                HStack(spacing: 20) {
                                    //category list
                                    
                                    
                                    ForEach(Array(viewModel.categoryList.enumerated()), id: \.offset){ index, category in
                                        
                                        
                                        CategoryCardView(title: category.title ?? "N/A" , isSelected: category.isSelected ?? false){
                                            
                                            viewModel.toggleSelection(at: index)
                                        }
                                        
                                        
                                        
                                    }
                                }//:HStack
                            }//ScrollView
                            .padding(.vertical,10)
                            
                            
                            //product
                            ScrollView(.horizontal, showsIndicators: false) {
                                HStack(spacing: 20) {
                                    //category list
                                    
                                    
                                    ForEach(Array(viewModel.productList.enumerated()), id: \.offset){ index, product in
                                        
                                        
                                        ProductCard(tapPressed: {
                                            
                                            viewModel.selectedProduct = product
                                            viewModel.goToDetails.toggle()
                                        }, productModel: product)
                                        
                                        
                                        
                                    }
                                }//:HStack
                            }//ScrollView
                            .padding(.vertical,10)
                            
                            
                            Spacer()
                            
                        }
                        .frame(minHeight: geometry.size.height)
                        .padding(.horizontal,16)
                        .padding(.vertical,16)
                    }//:ScrollView
                    .frame(width: geometry.size.width)
                }//;GeometryReader
                
            }//;VStack
            
            Text("")
                .onAppear{
                    loadView()
                }
            
            NavigationLink(destination:ProductDetailsView(productModel:viewModel.selectedProduct ??  sampleProduct), isActive: $viewModel.goToDetails){}

       
        }//:ZStack
    }
    
    func loadView(){
        startLoading()
        viewModel.fetchProductsList { status, message in
            stopLoading()
            print(message)
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
