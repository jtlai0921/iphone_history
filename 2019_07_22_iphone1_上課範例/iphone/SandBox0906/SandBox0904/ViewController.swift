//
//  ViewController.swift
//  SandBox0904
//
//  Created by Robert on 2019/9/4.
//  Copyright © 2019 ios1. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //let dataSource = DataSource.main;
    let citys:[City]! = DataSource.main.citys
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(citys[0].cityName)
    }

    

}
