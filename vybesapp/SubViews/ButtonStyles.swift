//
//  ButtonStyles.swift
//  vybesapp
//
//  Created by administrator on 2023-03-15.
//

import SwiftUI
//Btn Style
struct BtnStyle: ViewModifier {
    
    var color: Color = Color("#5c86ec")
    
    func body(content: Content) -> some View {
        content
            .font(.customFont(.PoppinsMedium, 15))
            .foregroundColor(Color.white)
            .frame(minWidth: 100, maxWidth: .infinity, minHeight: 48, maxHeight: 50, alignment: .center)
            .background(color)
            .cornerRadius(10)
            .shadow(color: Color.black.opacity(0.06), radius: 20, x: 0.0, y: 8.0)
    }
}
