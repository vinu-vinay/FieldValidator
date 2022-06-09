//
//  String+Validation.h
//  FieldValidator
//
//  Created by Vinayan M on 08/06/22.
//

import Foundation

private let alphabeticRegx = "^[A-z ]+$"
private let alphaNumericRegx = "[a-zA-Z0-9]+$"
private let numericRegx = "[0-9]+$"
private let emailRegx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}"
private let phoneRegx = "^\\d{10}$"
private let passwordRegx = "^(?=.*?[A-z]).{8,}$"


extension String {
    
    public var isAlphabetic: Bool {
        if !isEmpty {
            let alphabeticTest = NSPredicate(format: "SELF MATCHES %@", alphabeticRegx)
            return alphabeticTest.evaluate(with:self)
        }
        return false
    }
    
    public var isNumeric: Bool {
        if !isEmpty {
            let numericTest = NSPredicate(format: "SELF MATCHES %@", numericRegx)
            return numericTest.evaluate(with: self)
        }
        return false
    }
    
    public var isAlphaNumeric: Bool {
        if !isEmpty {
            let alphaNumericTest = NSPredicate(format: "SELF MATCHES %@", alphaNumericRegx)
            return alphaNumericTest.evaluate(with: self)
        }
        return false
    }

    public var isValidEmail: Bool {
        if !isEmpty {
            let emailTest = NSPredicate(format: "SELF MATCHES %@", emailRegx)
            return emailTest.evaluate(with: self)
        }
        return false
    }
    
    public var isValidURL: Bool {
        if !isEmpty {
            let url: URL = URL(fileURLWithPath: self)
            if let _ = url.scheme, let _ = url.host {
                return true
            }
        }
        return true
    }

    public var isValidPassword: Bool {
        if !isEmpty {
            let passwordTest = NSPredicate(format: "SELF MATCHES %@", passwordRegx)
            return passwordTest.evaluate(with: self)
        }
        return false
    }
    
    public var isValidPhone: Bool {
        if !isEmpty {
            let phoneTest = NSPredicate(format: "SELF MATCHES %@", phoneRegx)
            return phoneTest.evaluate(with: self)
        }
        return false
    }
    
    
}



