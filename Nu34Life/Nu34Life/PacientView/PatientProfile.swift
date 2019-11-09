//
//  PatientProfile.swift
//  Nu34Life
//
//  Created by Luisger on 11/8/19.
//  Copyright © 2019 Luisger's Shop. All rights reserved.
//

import SwiftUI
import SwiftyJSON

var actualPatient = PatientLog(id: "",name: "", lastName: "", email: "",nutritionistId: "", phone : "", birthday: "")

struct PatientLog :Identifiable {
    var id: String
    var name : String
    var lastName : String
    var email : String
    var nutritionistId : String
    var phone : String
    var birthday : String
    
}
struct PatientProfile: View {
    //@ObservedObject var obs = observerPatientLogger()

          var nonediting = true
          @State var email = ""
          @State var birthday = ""
          @State var phone = ""
          var body: some View {
              VStack{
                  Spacer()
                  Image("ProfileIcon")
                  HStack{
                      Text(actualPatient.name)
                      Text(actualPatient.lastName)
                  }
                  Text(actualPatient.birthday)
                  Spacer()
                  List{
                      HStack{
                          Text("Email: ")
                          TextField(String(actualPatient.email), text: $email).disabled(nonediting)
                      }
                      HStack{
                          Text("Birthday: ")
                          TextField(String(actualPatient.birthday), text: $birthday).disabled(nonediting)
                      }
                      HStack{
                          Text("Phone: ")
                          TextField(String(actualPatient.phone), text: $phone).disabled(nonediting)
                      }
                  }
              }
    }
}

struct PatientProfile_Previews: PreviewProvider {
    static var previews: some View {
        PatientProfile()
    }
}
