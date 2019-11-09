//
//  LogInNutricionista.swift
//  Nu34Life
//
//  Created by Luisger on 11/3/19.
//  Copyright © 2019 Luisger's Shop. All rights reserved.
//

import SwiftUI
import SwiftyJSON
import Alamofire

var email1 : String = ""
var password1 : String = ""
var currentId = 0
var patients = [datatype]()
class observerLogInNutritionist : ObservableObject{
    @Published var currentNutritionist = [loggerNutritionist]()
    
    init(){    Alamofire.request("https://nu34life-api-boot.herokuapp.com/nutritionists?email="+email1+"&password="+password1).responseData { (data) in
            
            let json = try! JSON(data: data.data!)
            
            for i in json{
                self.currentNutritionist.append(loggerNutritionist(id: i.1["id"].intValue, email: i.1["email"].stringValue, password: i.1["password"].stringValue))
            }
        currentId = json["id"].intValue
        }
    }
}

struct loggerNutritionist : Identifiable{
    var id : Int
    var email : String
    var password : String
}

struct LogInNutricionista: View {
    
    @State var username : String = ""
    @State var password : String = ""
    var body: some View {
        VStack {
            Spacer()
            TextField("Usuario", text: $username).modifier(FieldStyle())
            TextField("Contrasena", text: $password).modifier(FieldStyle())
            NavigationLink(destination: MainNutritionist()) {
                Text("Iniciar Sesion").padding(.bottom,30)
            }
            NavigationLink(destination: CreateNutritionist()) {
                    Text("Registrarse")
            }
            Spacer()
            }.navigationBarTitle("Inicio Sesion Nutricionista",displayMode: .inline)
    }
}

struct LogInNutricionista_Previews: PreviewProvider {
    static var previews: some View {
        LogInNutricionista()
    }
}
