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
                TextField("Nombres", text: $name).padding(.bottom).modifier(FieldStyle())
                TextField("Apellidos", text: $lastName).padding(.bottom).modifier(FieldStyle())
                TextField("Fecha de Nacimiento", text: $birthday).padding(.bottom).modifier(FieldStyle())
                TextField("Email", text: $email).padding(.bottom).modifier(FieldStyle())
                TextField("Contrasena", text: $password).textContentType(.password).padding(.bottom).modifier(FieldStyle())
                TextField("Celular", text: $cellphone).padding(.bottom).modifier(FieldStyle())
                HStack{
                    NavigationLink(destination: MainNutritionist()){
                        Text("Registrase")
                    }
                }
            }.navigationBarTitle(Text("Registro Nutricionista"), displayMode: .automatic).navigationBarBackButtonHidden(false)
    }
}

struct CreateNutritionist_Previews: PreviewProvider {
    static var previews: some View {
        CreateNutritionist()
    }
}
