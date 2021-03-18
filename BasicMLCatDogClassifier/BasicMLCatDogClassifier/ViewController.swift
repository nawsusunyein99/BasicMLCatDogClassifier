//
//  ViewController.swift
//  BasicMLCatDogClassifier
//
//  Created by Naw Su Su Nyein on 19/11/2020.
//  Copyright © 2020 Naw Su Su Nyein. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var checkAnimalButton : UIButton!
    @IBOutlet weak var classificationLabel : UILabel!
    @IBOutlet weak var imageView : UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        print("this is my test from person 1.")

        print("ptesres")

    }

    @IBAction func checkAnimalAction(_ sender: Any) {
    }
    
    
    
    @IBAction func selectImageSource(_ sender: Any) {
        let imagePicker = UIImagePickerController()
        imagePicker.delegate = self
        
        let imageSourceActions = UIAlertController(title: "Image Source", message: "Choose an image source to continue add", preferredStyle: .actionSheet)
        imageSourceActions.addAction(UIAlertAction(title: "Photo Library", style: .default, handler: {(action : UIAlertAction) in
            imagePicker.sourceType = .photoLibrary
            self.present(imagePicker, animated: true)
        }))
        imageSourceActions.addAction(UIAlertAction(title: "Cancel",style: .cancel))
    }
}

extension UIViewController : UIImagePickerControllerDelegate,UINavigationControllerDelegate{
    public func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
         
    }
    
    public func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        picker.dismiss(animated: true)
    }
}
