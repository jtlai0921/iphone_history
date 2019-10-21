//
//  CitysOfCountryViewController.swift
//  SandBox0904
//
//  Created by Robert on 2019/9/20.
//  Copyright © 2019 ios1. All rights reserved.
//

import UIKit

class CitysOfCountryViewController: UITableViewController {
    var country:String!;
    lazy var citys = DataSource.main.getCitysFromCountry(countryName: country) ?? [City]();
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goDetail"{
            let selectedCity = sender as! City
            let detailViewController = segue.destination as! DetailCityViewController
            detailViewController.city = selectedCity;
        }
    }
    
}


extension CitysOfCountryViewController{
        //UITableViewDataSource
        override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
            return citys.count;
        }
        
        override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
            let city = citys[indexPath.row]
            let cell = tableView.dequeueReusableCell(withIdentifier: "CELL", for: indexPath) as! CityCell
            
            let backgroundView = UIView();
            backgroundView.backgroundColor = UIColor.black;
            cell.backgroundView = backgroundView;
            
            let selectedBackgroundView = UIView();
            selectedBackgroundView.backgroundColor = UIColor.lightGray;
            cell.selectedBackgroundView = selectedBackgroundView
            
            cell.cityImageView.image = UIImage(named: city.image)
            cell.cityTitleLabel.text = city.cityName
            cell.cityDetailLabel.text = city.local
            return cell;
        }

}

extension CitysOfCountryViewController{
    //UITableViewDelegate
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){
        let city = citys[indexPath.row];
        performSegue(withIdentifier: "goDetail", sender: city);
    }
}
