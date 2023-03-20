//
//  CategoryCardView.swift
//  vybesapp
//
//  Created by administrator on 2023-03-15.
//

import SwiftUI

struct CategoryCardView: View {
    
    //MARK: - PROPERTIES
    var title: String
    var isSelected: Bool
    var tapButton: (()->())?
    
    //MARK: - BODY
    var body: some View {
        
        Button(action: {
            tapButton?()
        }) {
            
            Text(title)
                .font(.customFont(.PoppinsMedium, 16))
                .padding(.vertical,5)
                .padding(.horizontal,10)
                .foregroundColor(isSelected ? .white: .black)
                .background(isSelected ? Color("#5c86ec") : Color("#f4f6f8"))
                .cornerRadius(8)
        }
     
    }
}

struct CategoryCardVView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryCardView(title: "Test", isSelected: true)
    }
}
