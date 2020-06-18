//
//  ViewController.swift
//  autoLayout
//
//  Created by Sirius on 18.06.2020.
//  Copyright © 2020 Jaji. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let zarImageView: UIImageView = {
        let imageView = UIImageView(image: #imageLiteral(resourceName: "zar"))
        imageView.translatesAutoresizingMaskIntoConstraints = false

        return imageView

    }()
    
    let descriptionTextView: UITextView = {
        let textView = UITextView()
        textView.text = "Join us today in out fun and games!"
        textView.font = UIFont.boldSystemFont(ofSize: 18)
        textView.translatesAutoresizingMaskIntoConstraints = false
        textView.textAlignment = .center
        textView.isScrollEnabled = false
        return textView
        
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view
        
        view.addSubview(zarImageView)
        view.addSubview(descriptionTextView)
        
        setupLayout()
    }
    
    private func setupLayout() {
        zarImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
              zarImageView.topAnchor.constraint(greaterThanOrEqualToSystemSpacingBelow: view.topAnchor, multiplier: 10).isActive = true
              zarImageView.widthAnchor.constraint(equalToConstant: 200).isActive = true
              zarImageView .heightAnchor.constraint(equalToConstant: 200).isActive = true
        
        descriptionTextView.topAnchor.constraint(equalTo: zarImageView.bottomAnchor, constant: 15).isActive = true
   //     descriptionTextView.leftAnchor.constraint(equalTo: view.leftAnchor) = true
   //     descriptionTextView.rightAnchor.constraint(equalTo: view.rightAnchor) = true
   //     descriptionTextView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0) = true
          }


}

 
