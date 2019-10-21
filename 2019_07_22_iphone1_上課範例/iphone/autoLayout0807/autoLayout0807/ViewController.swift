//
//  ViewController.swift
//  autoLayout0807
//
//  Created by Robert on 2019/8/7.
//  Copyright © 2019 ios1. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func userClick(_ sender:UIButton){
        switch sender.tag {
        case 111:
            print("特性");
        case 222:
            print("產品");
        case 333:
            print("支援");
        default:
            print("其它");
        }
    }
}

