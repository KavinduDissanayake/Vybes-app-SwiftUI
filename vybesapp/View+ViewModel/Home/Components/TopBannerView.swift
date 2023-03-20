//
//  TopBannerView.swift
//  vybesapp
//
//  Created by administrator on 2023-03-15.
//

import SwiftUI

struct TopBannerView: View {
    var body: some View {
        ZStack {
            
            
            HStack {
                VStack(alignment: .leading) {
                    Text("Improved Controller \nDesign With \nVirtual Reality")
                        .foregroundColor(.white)
                        .font(.customFont(.PoppinsSemiBold, 17))
                    
                       // .minimumScaleFactor(0.5) // Add this modifier instead of fixedSize()
                    
                    Button(action: {
                        
                    }) {
                        Text("Buy Now!")
                            .foregroundColor(Color("#5c86ec"))
                            .font(.customFont(.PoppinsSemiBold, 12))
                            .padding(.horizontal, 7)
                            .padding(.vertical, 5)
                            .background(.white)
                            .cornerRadius(5)
                    }
                }
               // .background(Color.green)
                Spacer()
            }//:HStack
         
            
            
            
            Image("Oculus-Rift")
                .resizable()
                .frame(width: 200, height: 150)
              //  .background(Color.red)
                .offset(x: 120)
          

        }
        .padding(.horizontal, 16)
        .padding(.vertical, 16)
        .background(
            RoundedRectangle(cornerRadius: 10).fill(Color("#5c86ec"))
        )
        .frame(height: 150)
    }
}


struct TopBannerView_Previews: PreviewProvider {
    static var previews: some View {
        TopBannerView()
            .padding(20)
            .previewLayout(.sizeThatFits)
    }
}
