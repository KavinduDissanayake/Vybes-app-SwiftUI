//
//  PasswordTextField.swift
//  vybesapp
//
//  Created by administrator on 2023-03-15.
//

import SwiftUI

struct PasswordTextField: View {
    @Binding var password: String
    @State private var showPassword = true
    
    var body: some View {
        VStack {
            HStack {
               
                if showPassword {
                    TextField("Password", text: $password)
                        .font(.customFont(.PoppinsMedium, 14))
                } else {
                    SecureField("Password", text: $password)
                }
                Button(action: {
                    showPassword.toggle()
                }) {
                    Image(showPassword ? "ic_visibility_off" : "ic_visibility")
                        .foregroundColor(showPassword ? .blue : .secondary)
                }
            }
            .padding(.all, 15)
            .background(Color.gray.opacity(0.1))
            .cornerRadius(10)
        }
    }
}


struct PasswordTextField_Previews: PreviewProvider {
    static var previews: some View {
        PasswordTextField(password: .constant(""))
            .previewLayout(.sizeThatFits)
    }
}
