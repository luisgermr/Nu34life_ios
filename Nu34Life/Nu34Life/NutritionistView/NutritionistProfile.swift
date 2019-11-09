//
//  NutritionistProfile.swift
//  Nu34Life
//
//  Created by Luisger on 11/8/19.
//  Copyright © 2019 Luisger's Shop. All rights reserved.
//

import SwiftUI
import SwiftyJSON

var actualNutritionist = NutritionistLog(id: "",name: "", lastName: "", email: "", phone : "", birthday: "")

struct NutritionistLog: Identifiable {
    var id: String
    
    var name : String
    var lastName : String
    var email : String
    var phone : String
    var birthday : String
    
}

struct NutritionistProfile: View {
    //@ObservedObject var obs = observerNutritionistLogger()
    
    @State var nonediting = true
    @State var email = ""
    @State var birthday = ""
    @State var phone = ""
    var body: some View {
        VStack{
            Spacer()
            Image("ProfileIcon")
            HStack{
                Text(actualNutritionist.name)
                Text(actualNutritionist.lastName)
            }
            Text(actualNutritionist.birthday)
            Spacer()
            List{
                HStack{
                    Text("Email: ")
                    TextField(String(actualNutritionist.email), text: $email).disabled(nonediting)
                }
                HStack{
                    Text("Birthday: ")
                    TextField(String(actualNutritionist.birthday), text: $birthday).disabled(nonediting)
                }
                HStack{
                    Text("Phone: ")
                    TextField(String(actualNutritionist.phone), text: $phone).disabled(nonediting)
                }
                NavigationLink(destination: ContentView()) {
                    Text("Cerrar Sesion")
                }

            }
        }
    }
}

struct NutritionistProfile_Previews: PreviewProvider {
    static var previews: some View {
        NutritionistProfile()
    }
}
