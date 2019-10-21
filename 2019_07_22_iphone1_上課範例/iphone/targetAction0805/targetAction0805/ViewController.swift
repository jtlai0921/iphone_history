//
//  ViewController.swift
//  targetAction0805
//
//  Created by Robert on 2019/8/5.
//  Copyright © 2019 ios1. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func userClick(_ button:UIButton){
        if let buttonTitle = button.title(for: .normal){
            if buttonTitle == "請按我" {
                button.setTitle("請再按我", for: .normal)
            }else{
                button.setTitle("請按我", for: .normal)
            }
        }
        
        let alertController = UIAlertController(title: "使用者按了按鈕", message: "按鈕的名稱會改變", preferredStyle: .actionSheet);
        let actionButton = UIAlertAction(title: "OK", style: .default){
            (alertAction:UIAlertAction) -> Void in
            print("您按了ok");
        };
        alertController.addAction(actionButton);
        present(alertController, animated: true, completion: nil);
        
    }
    
    @IBAction func topButtonClick(_ sender: UIButton) {
        print("topButtonClick");
    }
    
}

