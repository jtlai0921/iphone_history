//
//  ViewController.swift
//  BMI0814
//
//  Created by Robert on 2019/8/14.
//  Copyright © 2019 ios1. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //身高cm
    var height = 0{
        willSet{
            print("輸入身高值是:\(newValue)");
        }
        
        didSet{
            switch height{
                case 100...250:
                    print("輸入身高值符合範圍");
                default:
                    print("輸入的身高有問題");
                    if height < 100 { height = 100}
                    if height > 250 { height = 250}
            }
        }
    }
    //體重kg
    var weight = 0{
        willSet{
            print("輸入的體重值是:\(newValue)");
        }
        
        didSet{
            switch weight{
            case 30...250:
                print("輸入體重值符合範圍");
            default:
                print("輸入的體重有問題");
                if weight < 30 { weight = 30}
                if weight > 250 { weight = 250}
            }
        }
    }
    //BMI
    var bmi:Double{
        let heightM = Double(height)/100.0
        return Double(weight) / (heightM * heightM)
    }
    
    @IBOutlet var heightTextField:UITextField!
    @IBOutlet var weightTextField:UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func displayBMI(_ sender:UIButton){
        if let h = Int(heightTextField.text!){
            height = h;
        }else{
            print("輸入身高有問題");
        }
        
        if let w = Int(weightTextField.text!){
            weight = w;
        }else{
            print("輸入體重有問題");
        }
        
        
        print("您的BMI是:" + String(format: "%.2f", bmi));
        
    }


}

