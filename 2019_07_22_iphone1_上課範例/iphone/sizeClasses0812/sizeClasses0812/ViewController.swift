//
//  ViewController.swift
//  sizeClasses0812
//
//  Created by Robert on 2019/8/12.
//  Copyright © 2019 ios1. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var myView:UIView!;
    @IBOutlet var bottomConstraints:NSLayoutConstraint!;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myView.translatesAutoresizingMaskIntoConstraints = false;
        NSLayoutConstraint.activate([
            myView.topAnchor.constraint(equalTo: view.topAnchor, constant: 20),
            myView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            myView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            myView.heightAnchor.constraint(equalToConstant: 150)
            ])
        
        bottomConstraints.constant = 250;
    }


}

