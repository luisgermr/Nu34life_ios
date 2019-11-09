//
//  NutritionistPatient.swift
//  Nu34Life
//
//  Created by Luisger on 11/6/19.
//  Copyright © 2019 Luisger's Shop. All rights reserved.
//

import SwiftUI
import Alamofire
import SwiftyJSON


var actualState = states(id: 1, height: 1, weight: 1, glucose: 1, patient: [])




struct states :Identifiable{
    var id : Int
    var height : Int
    var weight : Int
    var glucose : Int
    var patient	: JSON
}

struct NutritionistPatient: View {
    @ObservedObject var obs = observerPatient()
    @State var height = ""
    @State var weight = ""
    @State var glucose = ""
    @State var nonediting = true
    @State var text = "Actualizar Datos"
   
    var body: some View {
            VStack{
                Spacer()
                Image("ProfileIcon")
                Button(action:{
                    if self.nonediting == true {
                        self.text = "Guardar"
                        self.nonediting = false
                    }
                    if self.nonediting == false {
                        self.text = "Actualizar Datos"
                        self.nonediting = true
                    }
                }){
                    Text(text)
                }
                HStack{
                    Text(actualState.patient["name"].stringValue)
                    Text(actualState.patient["lastName"].stringValue)
                }
                Text(actualState.patient["birthday"].stringValue)
                Spacer()
                List{
                    HStack{
                        Text("Height: ")
                        TextField(String(actualState.height), text: $height).disabled(nonediting)
                    }
                    HStack{
                        Text("Weight: ")
                        TextField(String(actualState.weight), text: $weight).disabled(nonediting)
                    }
                    HStack{
                        Text("Glucose: ")
                        TextField(String(actualState.glucose), text: $glucose).disabled(nonediting)
                    }
                }
            }
        }
}

struct NutritionistPatient_Previews: PreviewProvider {
    static var previews: some View {
        NutritionistPatient()
    }
}
