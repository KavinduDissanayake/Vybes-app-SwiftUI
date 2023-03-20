//
//  Constant.swift
//  vybesapp
//
//  Created by administrator on 2023-03-15.
//

import Foundation
import UIKit

struct Constant {
    
    //MARK: Manage app environment with release type
    static let appEnvironment: DeploymentEnvironment = .development
    
    //MARK: App environments
    enum DeploymentEnvironment {
        case development
        case staging
        case production
    }
    
    //MARK: Get URLs (Base url etc.)
    enum URLs {
        static let baseUrl = getBaseURL()
    }
    
    
    //MARK: Provide base url for current app environment
    static func getBaseURL() -> String {
        switch Constant.appEnvironment {
        case .development:
            return "https://59b8726e92ccc3eb44b0c193eeef96f6.m.pipedream.net/"
        case .staging:
            return ""
        case .production:
            return "https://"
        }
    }
    
}

