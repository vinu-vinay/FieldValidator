//
//  Validator.h
//  FieldValidator
//
//  Created by Vinayan M on 08/06/22.
//

import Foundation

private let emptyStringError = "Value Required"
private let fullNameError = "First Name and Last Name Required"
private let nameRequiredError = "Invalid Name"
private let emailError = "Invalid Email"
private let phoneError = "Invalid Phone"
private let alphaNumericError = "Alpha Numeric Value Required"
private let urlError = "Invalid URL"
private let passwordError = "Password must be Alpha Numeric of atleast 8 characters"

enum ValidatorKey{
    case empty
    case fullName
    case email
    case phone
    case alphaNumeric
    case url
    case password
}



public class Validator{
    
     func validate(_ value: String, forType:ValidatorKey) -> (Bool, String?) {
        if !value.isEmpty {
            return (true, nil)
        }
         switch forType{
         case .empty:
             return (false, emptyStringError)
         case .fullName:
             let name: [String] = value.components(separatedBy: " ")
             if name.count == 2 && name[1].count > 1 {
                 return (true, nil)
             }
             return (false, fullNameError)
         case .email:
             if value.isValidEmail {
                 return (true, nil)
             }
         case .phone:
             if value.isValidPhone {
                 return (true, nil)
             }
         case .alphaNumeric:
             if value.isAlphaNumeric {
                 return (true, nil)
             }
         case .url:
             if value.isValidURL {
                 return (true, nil)
             }
         case .password:
             if value.isValidPassword {
                 return (true, nil)
             }
         }
        return (false, emptyStringError)
    }
}

