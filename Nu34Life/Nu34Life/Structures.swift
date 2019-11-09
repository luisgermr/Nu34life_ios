//
//  Structures.swift
//  Nu34Life
//
//  Created by Luisger on 11/8/19.
//  Copyright © 2019 Luisger's Shop. All rights reserved.
//

import Foundation
import SwiftUI
import Alamofire
import SwiftyJSON

struct FieldStyle: ViewModifier{
    func body(content: Content)-> some View{
        return content
            .padding(.leading, 30).padding(.vertical, 15)
    }
}
struct NutritionistCreate{
        var birthdate: String
        var email: String
        var id: String
        var lastName: String
        var name: String
        var password: String
        var phone: String
}
class observerCreateNutritionist : ObservableObject {
    let parameters = [
        
        "birthday" : "",
        "email" : "",
        "id" : "",
        "lastName" : " ",
        "name" : " ",
        "password" : "",
        "phone": ""

    ]
    init (){
        Alamofire.request( "https://nu34life-api-boot.herokuapp.com/nutritionists",method: .post, parameters: parameters, encoding: JSONEncoding()	)
    }
    
}
class observerPatient : ObservableObject{
    
    init(){
        
        Alamofire.request("https://nu34life-api-boot.herokuapp.com/states?idPatient=7").responseData { (data) in
            
            let json = try! JSON(data: data.data!)
            actualState.id = json["id"].intValue
            actualState.height = json["height"].intValue
            actualState.weight = json["weight"].intValue
            actualState.glucose = json["glucose"].intValue
            actualState.patient = json["patient"]
        }
    }
}

class observerNutritionistLogger : ObservableObject{
    
    init(){
 Alamofire.request("https://nu34life-api-boot.herokuapp.com/nutritionists?email=armandgv16@hotmail.com&password=armando123").responseData { (data) in
            
            let json = try! JSON(data: data.data!)
    print(json["name"])
    actualNutritionist.name = json["name"].stringValue
    actualNutritionist.lastName = json["lastName"].stringValue
    actualNutritionist.email = json["email"].stringValue
    actualNutritionist.birthday = json["birthday"].stringValue
    actualNutritionist.phone = json["phone"].stringValue
        }
    }
}

class observerPatientLogger : ObservableObject{
    
    init(){
 Alamofire.request("https://nu34life-api-boot.herokuapp.com/patients?email=diego_13_1999@hotmail.com&password=123456").responseData { (data) in
            
    let json = try! JSON(data: data.data!)
    actualPatient.name = json["name"].stringValue
    actualPatient.lastName = json["lastName"].stringValue
    actualPatient.email = json["email"].stringValue
    actualPatient.birthday = json["birthday"].stringValue
    actualPatient.phone = json["phone"].stringValue
    actualPatient.nutritionistId = json["nutritionistId"].stringValue
        }
    }
}


class observerGetPatients : ObservableObject{
    @Published var datas = [datatype]()
    
    init(){
        
        Alamofire.request("https://nu34life-api-boot.herokuapp.com/nutritionists/patients/"+String(currentId)).responseData { (data) in
            
            let json = try! JSON(data: data.data!)
            
            for i in json{
                self.datas.append(datatype(id: i.1["id"].intValue, name: i.1["name"].stringValue, lastName: i.1["lastName"].stringValue))
                print(i.1)
            }
            patients = self.datas
        }
    }
}
