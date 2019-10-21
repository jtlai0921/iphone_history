//
//  ViewController.swift
//  label0731
//
//  Created by Robert on 2019/7/31.
//  Copyright © 2019 ios1. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    @IBOutlet var inputField:UITextField!;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        inputField.text = "Hello!World!"
        
    }
    
    @IBAction func userClick(_ sender:UIButton){
        print("使用者按了按鈕");
    }
    
    


}

