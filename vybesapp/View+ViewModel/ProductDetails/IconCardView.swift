//
//  IconCardView.swift
//  vybesapp
//
//  Created by administrator on 2023-03-15.
//

import SwiftUI

struct IconCardView: View {
    var imageName:String
    var text:String
    var body: some View {
        VStack(spacing: 10){
            
            
           Image(imageName)
               

                            .aspectRatio(contentMode: .fit)
                            .frame(width: 50, height: 50)
                            .clipShape(Circle())
                            .overlay(
                                Circle()
                                    .stroke(Color.gray.opacity(0.5), lineWidth: 1)
                            )
                        
            
            Text(text)
                .font(.customFont(.PoppinsRegular, 12))
        }

    }
}

struct IconCardView_Previews: PreviewProvider {
    static var previews: some View {
        IconCardView(imageName: "ic_light_mode", text: "Improved Optic")
    }
}
