//
//  ViewController.swift
//  mvcModal0821
//
//  Created by Robert on 2019/8/21.
//  Copyright © 2019 ios1. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    var citys:[City] = DataSource.citys;
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }
}

extension ViewController{
    //UITableViewDataSource
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return citys.count;
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        let city = citys[indexPath.row];
        let cell = tableView.dequeueReusableCell(withIdentifier: "CELL", for: indexPath)
        cell.textLabel!.text = city.cityName;
        cell.imageView!.image = UIImage(named: city.image);
        return cell;
    }
}

