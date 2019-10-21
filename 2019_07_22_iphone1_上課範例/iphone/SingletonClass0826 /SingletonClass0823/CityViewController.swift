//
//  CityViewController.swift
//  SingletonClass0826
//
//  Created by Robert on 2019/8/26.
//  Copyright © 2019 ios1. All rights reserved.
//

import UIKit

class CityViewController: UIViewController {
    var city:City!;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = city.cityName;
       
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
