//
//  MainPatient.swift
//  Nu34Life
//
//  Created by Luisger on 11/6/19.
//  Copyright © 2019 Luisger's Shop. All rights reserved.
//

import SwiftUI

struct MainPatient: View {
    @State var showingProfile = false
    
    var profileButton: some View {
     NavigationLink(destination: PatientProfile()){
        Image(systemName: "person.crop.circle")
        .imageScale(.large)
        .accessibility(label: Text("User Profile"))
        .padding()
     }
    }
    
    var body: some View {
        VStack{
            HStack{
                Text("Hoy").padding(.leading, 20)
                Spacer()
            }.padding(.top, 50).padding(.bottom, 30)
            Image("background").resizable().scaledToFit().padding(.leading, 10	).padding(.trailing, 10)
            HStack{
                Spacer()
            Button(action: {}){
                Text("Ver mas").bold()
            }
            }.padding(.top , 50).padding(.trailing, 20).padding(.bottom, 50)
            
            HStack{
                Spacer()
                Spacer()
                Spacer()
            }
            Button(action: {}){
                Text("Mostrar mas dias").bold()
            }
            Spacer()
        }.navigationBarItems(trailing: profileButton).navigationBarBackButtonHidden(true).navigationBarTitle("MainPatient",displayMode: .inline)
    }
}



struct MainPatient_Previews: PreviewProvider {
    static var previews: some View {
        MainPatient()
    }
}
