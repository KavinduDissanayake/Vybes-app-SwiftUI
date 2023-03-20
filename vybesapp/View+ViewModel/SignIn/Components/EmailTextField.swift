//
//  EmailTextField.swift
//  vybesapp
//
//  Created by administrator on 2023-03-15.
//

import SwiftUI


struct EmailTextField: View {
    @Binding var email: String
    
    var body: some View {
        VStack {
            HStack {
               
                TextField("Email", text: $email)
                    .font(.customFont(.PoppinsMedium, 14))
            }
            .padding(.all, 15)
            .background(Color.gray.opacity(0.1))
            .cornerRadius(10)
        }
    }
}

struct EmailTextField_Previews: PreviewProvider {
    static var previews: some View {
        EmailTextField(email: .constant(""))
    }
}
