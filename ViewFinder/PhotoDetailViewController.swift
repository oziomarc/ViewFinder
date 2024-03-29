//
//  PhotoDetailViewController.swift
//  ViewFinder
//
//  Created by Apple on 6/25/19.
//  Copyright © 2019 KWK. All rights reserved.
//

import UIKit

class PhotoDetailViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let realPhoto = photo {
            title = realPhoto.caption
            
            if let cellPhotoImageData = realPhoto.addphoto {
                if let cellPhotoImage = UIImage(data: cellPhotoImageData) {
                    photoDetailView.image = cellPhotoImage
                }
            }
            
        }
    }
    
 
    @IBOutlet weak var photoDetailView: UIImageView!
    
    var photo : Photo? = nil
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}

