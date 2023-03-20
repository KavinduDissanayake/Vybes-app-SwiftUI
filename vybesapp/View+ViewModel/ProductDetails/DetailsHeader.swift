//
//  DetailsHeader.swift
//  vybesapp
//
//  Created by administrator on 2023-03-15.
//

import SwiftUI

struct DetailsHeader: View {
    
    //MARK: - PROPERTIES
    var backPressed: (()->())?
    var cartPressed: (()->())?
    
    var body: some View {
        HStack(spacing: 16){
            
            //menu
            Button(action: {
                backPressed?()
            }) {
                Image( "ic_back")
                    .font(.system(size: 20))
            }
            
            Spacer()
            
            
            
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

struct DetailsHeader_Previews: PreviewProvider {
    static var previews: some View {
        DetailsHeader()
    }
}
