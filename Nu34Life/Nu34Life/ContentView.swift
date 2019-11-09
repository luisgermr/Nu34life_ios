//
//  ContentView.swift
//  Nu34Life
//
//  Created by Luisger on 11/3/19.
//  Copyright © 2019 Luisger's Shop. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        NavigationView{
            VStack {
                Spacer()
                Image("Banner").padding(.bottom,50)
                NavigationLink(destination: LogInNutricionista()) {
                    Text("Nutricionista")
                }.padding(.bottom,100)
                NavigationLink (destination: LogInPaciente()) {
                    Text("Paciente")
                }
                Spacer()
            }.navigationBarTitle("Nu34Life").navigationBarBackButtonHidden(true)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
