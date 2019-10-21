//
//  CitysViewController.swift
//  SandBox0904
//
//  Created by Robert on 2019/9/16.
//  Copyright © 2019 ios1. All rights reserved.
//

import UIKit

class CitysViewController: UITableViewController {
    var citys:[City]! = DataSource.main.citys;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(citys!)
    }
}

extension CitysViewController{
    //UITableViewDataSource
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return citys.count;
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        let city = citys[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "CELL", for: indexPath)
        cell.textLabel?.text = city.cityName;
        return cell;
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath){
        print(indexPath.row)
        
        //刪除資料庫資料
        //刪除row資料
    }
    
}
