//
//  MainNutritionist.swift
//  Nu34Life
//
//  Created by Luisger on 11/5/19.
//  Copyright © 2019 Luisger's Shop. All rights reserved.
//

import SwiftUI
import Alamofire
import SwiftyJSON



struct datatype : Identifiable{
    var id : Int
    var name : String
    var lastName : String
}

struct card : View{
    var name = ""
    var lastName = ""
    var id = 0
    
    var body : some View{
        
        HStack{
            NavigationLink(destination: NutritionistPatient()) {
                     Text(name + lastName)
            }
        }
    }
}

struct MainNutritionist: View {
       
       var profileButton: some View {
        NavigationLink(destination: NutritionistProfile()){
            Image(systemName: "person.crop.circle")
            .imageScale(.large)
            .accessibility(label: Text("User Profile"))
            .padding()
        }
       }
    var body: some View {
            List(patients){i in
                card(name: i.name, lastName: i.lastName)
        }.navigationBarBackButtonHidden(true).navigationBarItems(trailing: profileButton)
    }
}

struct MainNutritionist_Previews: PreviewProvider {
    static var previews: some View {
        MainNutritionist()
    }
}
