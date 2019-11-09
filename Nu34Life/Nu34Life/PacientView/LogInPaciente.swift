//
//  LogInPaciente.swift
//  Nu34Life
//
//  Created by Luisger on 11/3/19.
//  Copyright © 2019 Luisger's Shop. All rights reserved.
//

import SwiftUI
import SwiftyJSON
import Alamofire

var email : String = ""
var password : String = ""


struct logger : Identifiable{
    var id : Int
    var email : String
    var password : String
}

struct LogInPaciente: View {
    
    @State var username : String = ""
    @State var pass : String = ""

    var body: some View {
        VStack {
            TextField("Correo", text: $username).modifier(FieldStyle())
            TextField("Contrasena", text: $pass).modifier(FieldStyle())
          //  Button(action: {
          //      email = self.username
          //      password = self.pass
          //      let obs = observerLogIn()
          //      if obs.datas.isEmpty == true{
          //          print("ta vacio pe tilin")
          //      }
          //  }) {
          //      Text("Iniciar Sesion")
          //  }
            NavigationLink(destination: MainPatient()) {
                    Text("Iniciar Sesion").padding(.bottom,30)
            }
            NavigationLink(destination: CreatePatient()) {
                    Text("Registrarse")
            }
        }.navigationBarTitle("LogInPaciente",displayMode: .inline)
    }
}

struct LogInPaciente_Previews: PreviewProvider {
    static var previews: some View {
        LogInPaciente()
    }
}
