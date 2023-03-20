//
//  Font+Extensions.swift
//  vybesapp
//
//  Created by administrator on 2023-03-15.
//

import SwiftUI


enum VybesAppFonts: String {
    case PoppinsBold = "Poppins-Bold"
    case PoppinsSemiBold = "Poppins-SemiBold"
    case PoppinsMedium = "Poppins-Medium"
    case PoppinsRegular = "Poppins-Regular"
}

extension Font {
    static func customFont( _ name: VybesAppFonts, _ size: CGFloat) -> Font {
        return Font.custom(name.rawValue, size: size)
    }
}

