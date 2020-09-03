//
//  Utilities.swift
//  skeleton for the user interface design

//
import Foundation
import UIKit

class Utilities {

    static func styleTextField(_ textfield:UITextField) {


        
    }

    static func styleFilledButton(_ button:UIButton) {


    }

    static func styleHollowButton(_ button:UIButton) {

    }

    static func isPasswordValid(_ password : String) -> Bool {

        let passwordTest = NSPredicate(format: "SELF MATCHES %@", "^(?=.*[a-z])(?=.*[$@$#!%*?&])[A-Za-z\\d$@$#!%*?&]{8,}")
        return passwordTest.evaluate(with: password)
    }

}
