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
        Image("ProfileIcon")
     }
    }
    
    var body: some View {
        VStack{
            HStack{
                Text("Hoy").padding(.leading, 20)
                Spacer()
            }
            Image("background").resizable().scaledToFit()
            HStack{
                Spacer()
            Button(action: {}){
                Text("Ver mas").bold()
            }
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
