//
//  SignupViewController.swift
//  Instagram
//
//  Created by Giang Tran on 11/11/22.
//

import UIKit
import Parse

class SignupViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var schoolLabel: UILabel!
    @IBOutlet weak var phoneNumLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var passwordLabel: UILabel!
    @IBOutlet weak var usernameLabel: UILabel!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var schoolTextField: UITextField!
    @IBOutlet weak var phoneTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var usernameTextField: UITextField!
    
    @IBAction func onSignUp(_ sender: Any) {
        let user = PFUser()
        user.username = usernameTextField.text
        user.password = passwordTextField.text
        user.email = emailTextField.text
        user["phone"] = phoneTextField.text
        user["school"] = schoolTextField.text

        user.signUpInBackground { (success, error) in
            if success {
                self.performSegue(withIdentifier: "signupSegue", sender: nil)
            } else {
            print( "Error: \(error?.localizedDescription)" )
            }
        }
    }
    
    @IBAction func backButton(_ sender: Any) {
        self.dismiss(animated: true, completion: nil);
    }
    
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
            self.view.endEditing(true)
    }
    
    //keyboard disapear when user hit return
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
                self.view.endEditing(true)
                return false
    }
    
    override func viewDidLoad() {
       
        super.viewDidLoad()
        self.schoolTextField.delegate = self
        self.phoneTextField.delegate = self
        self.usernameTextField.delegate = self
        self.passwordTextField.delegate = self
        self.emailTextField.delegate = self


        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
