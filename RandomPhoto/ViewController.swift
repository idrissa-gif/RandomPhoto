//
//  ViewController.swift
//  RandomPhoto
//
//  Created by idrissa Mahamoudou Dicko on 31/3/22.
//

import UIKit

class ViewController: UIViewController {
    
    private let imageView : UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.backgroundColor = .white
        return imageView
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBlue
        view.addSubview(imageView)
        imageView.frame = CGRect(x:0,y:0, width:300,height:300)
        imageView.center = view.center
    }


}

