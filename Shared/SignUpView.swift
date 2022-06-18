//
//  SignUpView.swift
//  SignUp
//
//  Created by Temiloluwa on 08/01/2021.
//

import SwiftUI

struct SignUpView: View {
    
    @State private var fnName = ""
    @State private var InName = ""
    @State private var City = ""
    @State private var Street = ""
    @State private var zip = ""
    @State private var lessThanTwo = false
    @State private var userName = ""
    @State private var password = ""
    
    var body: some View {
        
        NavigationView {
            
            Form {
                
                Section(header: Text("Names")) {
                    
                    TextField("First Name", text: $fnName)
                    
                    TextField("Last Name", text: $InName)
                    
                }
                
                Section(header: Text("Current Address")) {
                    
                    TextField("Street Address", text: $Street)
                    
                    TextField("City", text: $City)
                    
                    TextField("Zip", text: $zip)
                    
                    Toggle(isOn: $lessThanTwo) {
                        
                        Text("Have you lived here for 2+ years")
                    }
                }
                
                if !lessThanTwo {
                    
                    Section(header: Text("Previous Address")) {
                        
                        TextField("Street Address", text: $Street)
                        
                        TextField("City", text: $City)
                        
                        TextField("Zip", text: $zip)
                    }
                    
                }
                
                Section(header: Text("Create Account Info")) {
                    
                    TextField("Account", text: $userName)
                    
                    SecureField("password", text: $password)

                }
                
                Button("Submit") {
                    
                    print("Form submit action here")
                    
                }
                
            }.navigationBarTitle("SignUp")
        }
        
    }
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}
