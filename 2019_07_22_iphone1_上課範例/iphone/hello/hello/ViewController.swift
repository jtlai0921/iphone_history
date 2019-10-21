//
//  ViewController.swift
//  hello
//
//  Created by Robert on 2019/7/26.
//  Copyright © 2019 ios1. All rights reserved.
//

import UIKit
var myCount = 5;

func myFunction(){
    print("myCout value = \(myCount)");
}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print("111這是在ViewController內使用myCount:\(myCount)")
        myFunction()
    }


}

