//
//  BaseView.swift
//  vybesapp
//
//  Created by administrator on 2023-03-15.
//
import SwiftUI
import RappleProgressHUD


extension View {
    // Start loading
    func startLoading() {
        RappleActivityIndicatorView.startAnimating()
    }
    
    // Start loading with text
    func startLoadingWithText(label: String) {
        RappleActivityIndicatorView.startAnimatingWithLabel(label)
    }
    
    // Stop loading
    func stopLoading() {
        RappleActivityIndicatorView.stopAnimation()
    }
    
    func startLoadingWithProgress(current: CGFloat, total:CGFloat) {
        RappleActivityIndicatorView.setProgress(current/total)
    }
}

//keyboard dissmiss
extension View {
    
     func dismissingKeyboard() {
        UIApplication.shared.endEditing()
    }
}
