//
//  LoginViewController.swift
//  Instagram
//
//  Created by Diego Rivas Lazala on 10/14/22.
//

import UIKit
import Parse

class LoginViewController: UIViewController {

    //if user click signup, transfer to the sign up user story
    @IBAction func onSignup(_ sender: Any) {
        self.performSegue(withIdentifier: "toSignUp", sender: nil)
    }
    
    
    @IBAction func onSignIn(_ sender: Any) {
        let username = usernameField.text!
        let password = passwordField.text!
        
        PFUser.logInWithUsername(inBackground: username, password: password)
        { user, error in
            if user != nil{
                self.performSegue(withIdentifier: "loginSegue", sender: nil)
            } else {
                print( "Error: \(error?.localizedDescription)" )
            }
        }
    }

    
    @IBOutlet weak var usernameField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
            self.view.endEditing(true)
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
