//
//  FormFieldDisable.swift
//  SignUp
//
//  Created by Temiloluwa on 09/01/2021.
//

import SwiftUI

struct FormFieldDisable: View {
    
    @State private var username = ""
    @State private var password = ""
    
    var body: some View {
        
        VStack {
            
            Text("Amazing Games")
                .fontWeight(.heavy)
                .foregroundColor(.blue)
                .font(.largeTitle)
                .padding(.bottom, 30)
            
            Image(systemName: "person.fill")
                .font(.system(size: 150))
                .foregroundColor(.gray)
                .padding(.bottom, 40)
            
            Group {
                
                TextField("UserName", text: $username)
                SecureField("Password", text: $password)
                 
            }.padding()
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(Color.black, lineWidth: 2)
         )
            
            Button(action: {
                
                print("Submited Clicked")
            }, label: {
                
                Text("Submit")
            })
            .padding()
            .background(Color.blue)
            .foregroundColor(.white)
            .clipShape(Capsule())
            .disabled(username.isEmpty || password.isEmpty)
            
        }
    }
}

struct FormFieldDisable_Previews: PreviewProvider {
    static var previews: some View {
        FormFieldDisable()
    }
}
