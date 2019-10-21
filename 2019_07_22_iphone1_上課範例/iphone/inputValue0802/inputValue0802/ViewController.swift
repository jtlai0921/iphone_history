//
//  ViewController.swift
//  inputValue0802
//
//  Created by Robert on 2019/8/2.
//  Copyright © 2019 ios1. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //property屬性
    @IBOutlet var weightField:UITextField!;
    @IBOutlet var heightField:UITextField!;
    
    
    override func viewDidLoad() { //method(方法)
        
        super.viewDidLoad()
        
    }

    @IBAction func userClick(_ sender:UIButton){
        let weightString = weightField.text!;
        let heightString = heightField.text!;
        /*
        if let weightDouble = Double(weightString){
            if let heightDouble = Double(heightString){
                print("您的體重是:\(weightDouble)")
                print("您的身高是:\(heightDouble)");
            }else{
               print("您的身高格式有問題");
            }
        }else{
            print("您的體重格式有問題");
        }
 */
        
        if let weightDouble = Double(weightString), let heightDouble = Double(heightString){
            switch(weightDouble,heightDouble){
            case (30...300, 100...300):
                print("計算中...");
            default:
                print("超出範圍");
            }
        }else{
            print("您的輸入格式有問題");
        }
        
        
        
    }
}

