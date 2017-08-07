//
//  ViewController.swift
//  SDPhotosHelper
//
//  Created by Sagar Dagdu on 8/7/17.
//  Copyright © 2017 Sagar Dagdu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let albumName = "SDPhotosHelper"
    
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        SDPhotosHelper.createAlbum(withTitle: self.albumName) { (success, error) in
            if success {
                print("Created album : \(self.albumName)")
            } else {
                if let error = error {
                    print("Error in creating album : \(error.localizedDescription)")
                }
            }
        }
    }
    
    @IBAction func saveToPhotosTapped(_ sender: Any) {
        guard let image = self.imageView.image else {
            print("Couldn't get image")
            return
        }
        
        SDPhotosHelper.addNewImage(image, toAlbum: self.albumName, onSuccess: { ( identifier) in
            print("Saved image successfully, identifier is \(identifier)")
            let alert = UIAlertController.init(title: "Success", message: "Image added, id : \(identifier)", preferredStyle: .alert)
            let actionOk = UIAlertAction.init(title: "OK", style: .cancel, handler: nil)
            alert.addAction(actionOk)
            OperationQueue.main.addOperation({ 
                self.present(alert, animated: true, completion: nil)
            })
        }) { (error) in
            if let error = error {
                print("Error in creating album : \(error.localizedDescription)")
            }
        }
    }

}

