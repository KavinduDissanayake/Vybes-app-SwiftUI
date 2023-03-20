//
//  LoadingIndicatorDelegate.swift
//  vybesapp
//
//  Created by administrator on 2023-03-15.
//


import Foundation
import UIKit
import RappleProgressHUD

protocol LoadingIndicatorDelegate {
    func startLoading()

}

extension LoadingIndicatorDelegate {
    // -------- RappleProgressHUD -------- //
    // Start loading
    func startLoading() {
        RappleActivityIndicatorView.startAnimating()
    }

    // Stop loading
    func stopLoading() {
        RappleActivityIndicatorView.stopAnimation()
    }
    
   
}


