//
//  CreatePatient.swift
//  Nu34Life
//
//  Created by Luisger on 11/7/19.
//  Copyright © 2019 Luisger's Shop. All rights reserved.
//

import SwiftUI

struct CreatePatient: View {
    @State var name : String = ""
    @State var lastName : String = ""
    @State var birthday : String = ""
    @State var email : String = ""
    @State var password : String = ""
    @State var cellphone : String = ""
    @State var nutritionistId : String = ""
    
    
    var body: some View {
        VStack{
            TextField("Nombres", text: $name).modifier(FieldStyle())
            //Divider()
            TextField("Apellidos", text: $lastName).modifier(FieldStyle())
            //Divider()
            TextField("Fecha de Nacimiento", text: $birthday).modifier(FieldStyle())
            //Divider()
            TextField("Correo Electronico", text: $email).modifier(FieldStyle())
            //Divider()
            TextField("Contrasena", text: $password).modifier(FieldStyle())
            //Divider()
            TextField("Celular", text: $cellphone).modifier(FieldStyle())
            //Divider()
            TextField("Id de Nutricionista", text: $nutritionistId).modifier(FieldStyle())
            HStack{
                NavigationLink(destination: MainPatient()){
                    Text("Registrarse")
                }
            }
            }.navigationBarTitle(Text("Registro Paciente"), displayMode: .automatic).navigationBarBackButtonHidden(false)
    }
}

struct CreatePatient_Previews: PreviewProvider {
    static var previews: some View {
        CreatePatient()
    }
}
