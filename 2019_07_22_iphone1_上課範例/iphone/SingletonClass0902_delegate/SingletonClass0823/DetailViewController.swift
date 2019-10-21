//
//  DetailViewController.swift
//  SingletonClass0828
//
//  Created by Robert on 2019/8/30.
//  Copyright © 2019 ios1. All rights reserved.
//

import UIKit

class DetailViewController: UITableViewController {
    var city:City!;
    override func viewDidLoad() {
        super.viewDidLoad()

        title = city.cityName;
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
