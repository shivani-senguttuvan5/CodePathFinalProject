//
//  CameraViewController.swift
//  Instagram
//
//  Created by Diego Rivas Lazala on 10/14/22.
//

import UIKit
import AlamofireImage
import Parse

class CameraViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate{
    @IBOutlet weak var commentField: UITextField!
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBAction func onSubmitButton(_ sender: Any) {
        //to create custom table, each row could be user or post
        let post = PFObject(className: "Posts") //className: "Dictionary"
        
        post["caption"] = commentField.text!
        post["author"] = PFUser.current()!
        //PF supports: strings, numbers and "binary objects" and stored as URL (PFFile object used)

        
        //grab image data
        let imageData = imageView.image!.pngData()
        //picture saved in another table
        let file = PFFileObject(name: "image.png", data: imageData!) //"unwrapping"
        
        post["image"] = file //has URL link for the image
        
        //each pf object needs to save itself
        post.saveInBackground { (success,error) in
            if success {
                self.dismiss(animated: true, completion: nil)
                print("saved!")
                
            } else {
                print("error1")
            }
        }
    }
    
    
    
    @IBAction func onCameraButton(_ sender: Any) {
        //launching camera easily
        let picker = UIImagePickerController()
        picker.delegate = self //done taking photo then call them back on function that has a functino
        picker.allowsEditing = true //presents second screen for user to change pictures
        //not configurable (can't add filter or custom look)
        //use AB foundation for camera & third party library to embbed custom cameras
        
        if UIImagePickerController.isSourceTypeAvailable(.camera){
            picker.sourceType = .photoLibrary
        } else {
            picker.sourceType = .photoLibrary
            //might be able to use photo from library
        }
        
        present(picker, animated: true, completion: nil)
        
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        let image = info[.editedImage] as! UIImage
        //resizing the image after getting it form the user
        
        let size = CGSize(width: 300, height: 300)
        let scaledImage = image.af_imageScaled(to: size)
        
        imageView.image = scaledImage
        
        dismiss(animated: true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()

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
