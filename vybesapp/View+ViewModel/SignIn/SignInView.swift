//
//  SignInView.swift
//  vybesapp
//
//  Created by administrator on 2023-03-15.
//

import SwiftUI

struct SignInView: View {
    
    let viewModel = SignInVM()
    
    
    var body: some View {
        ZStack{
            
        
            VStack{
                
                VStack {
                    Text("V") + Text("y").foregroundColor(Color("#5c86ec")) + Text("bes")
                }
                .font(.customFont(.PoppinsBold, 30))

                
                Image("undraw_city_life_gnpr")
                    .resizable()
                    .frame(height: 150)
                  
                
                GeometryReader { geometry in
                    ScrollView(.vertical , showsIndicators: false) {
                        VStack(alignment: .center, spacing: 20) {
                            
                            Text("Sign in")
                                .font(.customFont(.PoppinsSemiBold, 15))
                            
                            Spacer()
                            
                            
                            VStack(spacing:10){
                                
                                EmailTextField(email: .constant(""))

                                
                                PasswordTextField(password: .constant(""))
                                
                                
                                HStack {
                                    
                                    Spacer()
                                    
                                    Button(action: {
                                      
                                    }) {
                                        Text("Forgot Password")
                                            .font(.customFont(.PoppinsSemiBold, 12))
                                            .foregroundColor(Color.black)
                                    }
                                }
                            }
                            .padding(.horizontal,16)
                            
                            Spacer()
                            //signIn
                            
                            VStack(spacing: 30){
                                Button(action: {
                                    
                                    //
                                    
                                }) {
                                    Text("Sign In")
                                        .modifier(BtnStyle())
                                }
                                
                                //divide
                                
                                HStack {
                                    Rectangle()
                                        .frame(height: 1)
                                    
                                    Text("OR")
                                        .font(.customFont(.PoppinsMedium, 12))
                                    Rectangle()
                                        .frame(height: 1)
                                }
                                .foregroundColor(Color("#aaabad"))
                                
                                Button(action: {
                                    
                                    //
                                    
                                    viewModel.performFacebookSignIn { status in


                                    }
                                    
                                    
                                }) {
                                    HStack {
                                        
                                        Image("fb_logo")
                                            .resizable()
                                            .frame(width: 20, height: 20, alignment: .center)
                                        
                                        Text("Continue With Facebook")
                                    }
                                        .modifier(BtnStyle(color: Color("#007aff")))
                                }
                                
                                
                            }//:VStack
                            .padding(.horizontal,16)
                            
                            //to sign in
                            HStack {
                                Text("Don't have an account?")
                                    .font(.customFont(.PoppinsMedium, 12))
                            
                                
                                Button(action: {
                                    //
                                }) {
                                    Text("Join now")
                                        .font(.customFont(.PoppinsSemiBold, 12))
                                        .foregroundColor(Color.black)
                                }
                            }
                            
                        }
                        .frame(minHeight: geometry.size.height)
                    }//:ScrollView
                    .frame(width: geometry.size.width)
                }//;GeometryReader
                
                
                
            }//VStack
            .onTapGesture {
                dismissingKeyboard()
            }
            
            
        }
    }
}

struct SignInView_Previews: PreviewProvider {
    static var previews: some View {
        SignInView()
    }
}
