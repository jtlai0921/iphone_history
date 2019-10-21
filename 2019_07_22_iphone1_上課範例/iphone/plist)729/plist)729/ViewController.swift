//
//  ViewController.swift
//  plist)729
//
//  Created by Robert on 2019/7/29.
//  Copyright © 2019 ios1. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    @IBOutlet var textView:UITextView!;
    override func viewDidLoad() {
        super.viewDidLoad()
        
        /*
         var names:[String];
        if let path = Bundle.main.path(forResource: "Names", ofType: "plist"){
            print(path);
            if let namesDic = NSDictionary(contentsOfFile: path) as? [String:[String]]{
                names = namesDic["names"]!
            }
        }
 */
        let path = Bundle.main.path(forResource: "Names", ofType: "plist")!
        let namesDic = NSDictionary(contentsOfFile: path) as? [String:[String]]
        let names = namesDic!["names"]!;
        var message  = "";
        
        for name in names{
            message += "\(name) \n";
        }
        
        textView.text = message;
        
        
    }


}

