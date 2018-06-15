//
//  ViewController.swift
//  MLImageIdentifier
//
//  Created by Zhengyang Duan on 2018-06-15.
//  Copyright © 2018 Zhengyang Duan. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UINavigationControllerDelegate, UIImagePickerControllerDelegate{

    @IBOutlet weak var image: UIImageView!
    
    let imagePicker = UIImagePickerController()
    override func viewDidLoad() {
        super.viewDidLoad()
        imagePicker.delegate = self
        imagePicker.sourceType = .camera
        imagePicker.allowsEditing = false
        
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        if let targetImage = info[UIImagePickerControllerOriginalImage] as? UIImage{
            image.image = targetImage
        }
        imagePicker.dismiss(animated: true, completion: nil)
    }
    @IBAction func cameraPressed(_ sender: UIBarButtonItem) {
        
        present(imagePicker, animated: true, completion: nil)
    }
    
    
}

