//
//  ArticleView.swift
//  SignUp
//
//  Created by Temiloluwa on 10/01/2021.
//

import SwiftUI

struct ArticleView: View {
    
    var currencies: [Currency] = [Currency(name: "Dollar", image: "dollarsign.circle.fill"), Currency(name: "Euro", image: "eurosign.circle.fill")]
    
    var body: some View {
       
        NavigationView {
            
            VStack {
            
                ForEach(currencies) { currency in
                      
                    HStack {
                        
                        Group {
                            
                            Text(currency.name)
                            
                            Spacer()
                            
                            Image(systemName: currency.image)
                            
                        }.font(Font.system(size: 40, design: .default))
                        
                        .padding()
                    }
                
                }
                
            }.navigationBarTitle("Currencies")
        }
    }
}

struct ArticleView_Previews: PreviewProvider {
    static var previews: some View {
        ArticleView()
    }
}
