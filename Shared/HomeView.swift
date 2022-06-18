//
//  HomeView.swift
//  SignUp
//
//  Created by Temiloluwa on 10/01/2021.
//

import SwiftUI

struct HomeView: View {
    
    let Teams = ["Aston Villa", "Arsenal","Chelsea", "Liverpool", "Manchester United", "Bolton", "Manchester City", "Psg", "Juventus", "Barcelona", "Real Madrid", "Bayern Munchen"]
    
    
    var body: some View {
        
        NavigationView {
            
            List {
                
                ForEach(self.Teams, id: \.self) { team in
                    
                    Text(team)
                }
            }.navigationBarTitle("Football Clubs", displayMode: .inline)
        }
        .font(.title)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
