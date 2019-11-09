//
//  CreateNutritionist.swift
//  Nu34Life
//
//  Created by Luisger on 11/7/19.
//  Copyright © 2019 Luisger's Shop. All rights reserved.
//

import SwiftUI

struct CreateNutritionist: View {
    @State var name = ""
    @State var lastName = ""
    @State var birthday = ""
    @State var email = ""
    @State var password = ""
    @State var cellphone = ""
    var body: some View {
        
            VStack{
                TextField("Nombres", text: $name).modifier(FieldStyle())
               
                TextField("Apellidos", text: $lastName).modifier(FieldStyle())
               
                TextField("Fecha de Nacimiento", text: $birthday).modifier(FieldStyle())
                //Divider()
                TextField("Email", text: $email).modifier(FieldStyle())
               // Divider()
                TextField("Contrasena", text: $password).modifier(FieldStyle())
                //Divider()
                TextField("Celular", text: $cellphone).modifier(FieldStyle())
                HStack{
                    NavigationLink(destination: MainNutritionist()){
                        Text("Registrase")
                    }
        
            }.navigationBarTitle(Text("Registro Nutricionista"), displayMode: .automatic).navigationBarBackButtonHidden(false)
    }
    }
}

struct CreateNutritionist_Previews: PreviewProvider {
    static var previews: some View {
        CreateNutritionist()
    }
}
