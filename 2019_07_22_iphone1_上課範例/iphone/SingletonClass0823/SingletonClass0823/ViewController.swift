//
//  ViewController.swift
//  SingletonClass0823
//
//  Created by Robert on 2019/8/23.
//  Copyright © 2019 ios1. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    let citys = DataSource.main.citys;
    
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
        let city = citys[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "CELL", for: indexPath) as! CityCell;
        cell.cityImageView.image = UIImage(named: city.image);
        cell.nameLabel.text = city.cityName;
        cell.countryLabel.text = city.country;
        cell.continentLabel.text = city.continent;
        return cell;
    }
}

