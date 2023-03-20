//
//  SignInVM.swift
//  vybesapp
//
//  Created by administrator on 2023-03-15.
//

import Foundation
import FBSDKLoginKit


class SignInVM: BaseVM {
    
    //MARK: - signIn with Facebook
    func performFacebookSignIn(completion: @escaping (_ status: Bool) -> ()) {
        
        let loginManager = LoginManager()
        
        loginManager.logIn(permissions: ["email", "public_profile"], from: nil) { result, error in
            // Process result or error
            if let error = error {
                print(error)
                completion(false)
            } else {
                
                guard let fbLoginResult = result else {
                    completion(false)
                    return
                }
                //if canceled signIn
                if fbLoginResult.isCancelled {
                    completion(false)
                    return
                }
                
                
                print("🔵 FB token: \(String(describing: AccessToken.current?.tokenString))")
                
                
                //TODO: need add details for app info
                //TODO: save for our databse and local db then handler completion
                completion(true)
                
            }
        }
    }
    
}
    

