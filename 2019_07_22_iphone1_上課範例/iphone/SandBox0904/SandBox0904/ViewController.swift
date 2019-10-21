//
//  ViewController.swift
//  SandBox0904
//
//  Created by Robert on 2019/9/4.
//  Copyright © 2019 ios1. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Citys"
       
    }

    @IBAction func userClick(_ sender:UIBarButtonItem){
        let descriptionViewControll = DViewController(nibName: "DViewController", bundle: nil);
        
        self.navigationController?.pushViewController(descriptionViewControll, animated: true);
    }
   

}
