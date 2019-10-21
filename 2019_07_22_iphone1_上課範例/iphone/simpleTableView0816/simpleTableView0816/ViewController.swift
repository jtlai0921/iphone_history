//
//  ViewController.swift
//  simpleTableView0816
//
//  Created by Robert on 2019/8/16.
//  Copyright © 2019 ios1. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var textView:UITextView!;
    var fontNames = UIFont.familyNames
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var message = String();
        for name in fontNames{
            message += name;
            message += "\n\n";
        }
 
        //print(message);
        textView.text = message;
    }


}

