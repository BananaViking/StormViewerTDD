//
//  DetailViewController.swift
//  StormviewerTDD
//
//  Created by Banana Viking on 2/3/19.
//  Copyright © 2019 Banana Viking. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    let imageView = UIImageView()
    var selectedImage: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let imageToLoad = selectedImage {
            imageView.image = UIImage(named: imageToLoad)
        }
    }
    
    override func loadView() {
        imageView.backgroundColor = .white
        imageView.contentMode = .scaleAspectFill
        view = imageView
    }
    
}
