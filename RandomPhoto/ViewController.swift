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
    private let button : UIButton = {
        let button = UIButton()
        button.backgroundColor = .white
        button.setTitle("Generate", for: .normal)
        return button
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBlue
        view.addSubview(imageView)
        imageView.frame = CGRect(x:0,y:0, width:300,height:300)
        imageView.center = view.center
        view.addSubview(button)
        button.frame = CGRect(x:0,y:0,width:50 ,height:30 )
        generateRandomPhoto()
    }
    func generateRandomPhoto()
    {
        let urlstring = "https://source.unsplash.com/random/600x600"
        let url = URL(string: urlstring)!
        guard let data = try? Data(contentsOf: url) else{
            return
        }
        
        imageView.image = UIImage(data:data)
    }
}

