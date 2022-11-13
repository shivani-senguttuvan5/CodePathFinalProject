//
//  ProfileViewController.swift
//  Instagram
//
//  Created by Giang Tran on 11/13/22.
//

import UIKit
import Parse

class ProfileViewController: UIViewController {

    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var usernameLabel: UILabel!
    
    @IBOutlet weak var schoolLabel: UILabel!
    @IBOutlet weak var schoolName: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    
    @IBOutlet weak var phoneLabel: UILabel!
    @IBOutlet weak var phoneNum: UILabel!
    @IBOutlet weak var emailAdd: UILabel!
    
    override func viewDidLoad() {
        loadUser()
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func loadUser() {
        let user = PFUser.current()
//        schoolLabel.text = currUser["school"] as! String
        usernameLabel.text = user!.username
        emailAdd.text = user!.email
        schoolName.text = user!["school"] as? String
        phoneNum.text = user!["phone"] as? String
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
