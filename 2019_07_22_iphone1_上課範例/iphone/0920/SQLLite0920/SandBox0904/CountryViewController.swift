//
//  CountryViewController.swift
//  SandBox0904
//
//  Created by Robert on 2019/9/20.
//  Copyright © 2019 ios1. All rights reserved.
//

import UIKit

class CountryViewController: UITableViewController {
    var countries = DataSource.main.countries ?? [String]();
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(countries);
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goCitys"{
            let countryName = sender as! String;
            let cityOfCountryViewController = segue.destination as! CitysOfCountryViewController;
            cityOfCountryViewController.country = countryName;
            
        }
    }
}

extension CountryViewController{
    //UITableViewDataSource
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return countries.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        let countryName = countries[indexPath.row];
        let cell = tableView.dequeueReusableCell(withIdentifier: "CELL", for: indexPath);
        cell.textLabel?.text = countryName;
        return cell;
    }
}

extension CountryViewController{
    //UITableViewDelegate
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){
        let country = countries[indexPath.row];
        performSegue(withIdentifier: "goCitys", sender: country);
    }
}
