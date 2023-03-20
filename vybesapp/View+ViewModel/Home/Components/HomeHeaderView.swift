//
//  HomeNavigationBarView.swift
//  vybesapp
//
//  Created by administrator on 2023-03-15.
//

import SwiftUI


struct HomeHeaderView: View {
    
    //MARK: - PROPERTIES
    var menuPressed: (()->())?
    var searchPressed: (()->())?
    var cartPressed: (()->())?
    
    //MARK: - BODY
    var body: some View {
        
        HStack(spacing: 16){
            
            //menu
            Button(action: {
                menuPressed?()
            }) {
                Image( "ic_menu")
                    .font(.system(size: 20))
            }
            
            Spacer()
            
            //search
            Button(action: {
                searchPressed?()
            }) {
                Image( "ic_search")
                    .font(.system(size: 20))
            }
            
            //cart
            Button(action: {
                cartPressed?()
            }) {
                Image("ic_mall_black")
                    .font(.system(size: 20))
            }
        }
        .foregroundColor(.black)
        .padding(.horizontal,16)
        
    }
}

struct HomeNavigationBarView_Previews: PreviewProvider {
    static var previews: some View {
        HomeHeaderView()
    }
}
