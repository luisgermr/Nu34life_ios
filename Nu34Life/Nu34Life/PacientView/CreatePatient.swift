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
            TextField("Nombres", text: $name).padding(.bottom).modifier(FieldStyle())
            TextField("Apellidos", text: $lastName).padding(.bottom).modifier(FieldStyle())
            TextField("Fecha de Nacimiento", text: $birthday).padding(.bottom).modifier(FieldStyle())
            TextField("Correo Electronico", text: $email).padding(.bottom).modifier(FieldStyle())
            TextField("Contrasena", text: $password).textContentType(.password).padding(.bottom).modifier(FieldStyle())
            TextField("Celular", text: $cellphone).padding(.bottom).modifier(FieldStyle())
            TextField("Id de Nutricionista", text: $nutritionistId).padding(.bottom).modifier(FieldStyle())
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
