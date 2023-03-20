//
//  ViewRouter.swift
//  vybesapp
//
//  Created by administrator on 2023-03-15.
//

import SwiftUI


enum Roots {
    case signIn
    case userTabs
}


class ViewRouter: ObservableObject {
    
    @Published var currentRoot: Roots =  .signIn
    
    static let shared = ViewRouter()

    fileprivate init() {
        //check the usr is login or not
        currentRoot = .signIn
      
    }
    
}
