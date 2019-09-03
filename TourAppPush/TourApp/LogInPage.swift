 //
//  LogInPage.swift
//  TourApp
//
//  Created by Vidya on 8/25/19.
//  Copyright © 2019 Vidya Jayaraman. All rights reserved.
//

import UIKit
import FirebaseAuth
import Firebase
 
class LogInPage: UIViewController {
    
    
    @IBOutlet weak var EmailTextField: UITextField!
    
    @IBOutlet weak var PasswordTextField: UITextField!
    
    @IBOutlet weak var logInButton: UIButton!
    
    
    @IBOutlet weak var errorLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUpElements()

        // Do any additional setup after loading the view.
    }
    
    func setUpElements() {
        errorLabel.alpha = 0
        
        Utilities.styleTextField(EmailTextField)
        
        Utilities.styleTextField(PasswordTextField)
        Utilities.styleFilledButton(logInButton)
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    func validateFields() -> String? {
        //check that all fields are filled in
        if
            EmailTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines) == ""
            ||
            PasswordTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines) == ""
        {
            return "Please fill in all fields."
            
        }
        
        //Check if password is secure
        return nil
    }
    @IBAction func logInButton(_ sender: Any) {
        //Check if the fields are filled in
        
        // Create cleaned versions of the text field
        let email = EmailTextField.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        let password = PasswordTextField.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        
        // Signing in the user
        Auth.auth().signIn(withEmail: email, password: password) { (result, error) in
            
            if error != nil {
                // Couldn't sign in
                self.errorLabel.text = error!.localizedDescription
                self.errorLabel.alpha = 1
            }
            else {
                
                let homeViewController = self.storyboard?.instantiateViewController(withIdentifier: Constants.Storyboard.homeViewController) as? HomePage
                
                self.view.window?.rootViewController = homeViewController
                self.view.window?.makeKeyAndVisible()
            }
        }

    }
    
}
