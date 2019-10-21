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
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goCity"{
            let city = sender as! City
            let cityViewController = segue.destination as! CityViewController
            cityViewController.city = city;
        }
        
        if segue.identifier == "goScore" {
            let selectedButton = sender as! UIButton;
            //print(selectedButton.superview?.superview?.superview)
            guard let selectedCell = selectedButton.superview?.superview?.superview as? CityCell else{
                print("出現錯誤");
                return
            }
            let indexPath = tableView.indexPath(for: selectedCell)!;
            let selectedCity = citys[indexPath.row];
            
            //取得ScoreViewController的實體
            let scoreViewController = segue.destination as! ScoreViewController;
            scoreViewController.city = selectedCity;
            
        }
        
        if segue.identifier == "goDetail"{
            let selectedCity = sender as! City;
            let detailViewController = segue.destination as! DetailViewController;
            detailViewController.city = selectedCity;
        }
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
        cell.accessoryType = .detailDisclosureButton
        return cell;
    }
}

extension ViewController{
    //UITableViewDelegate
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){
        let city = citys[indexPath.row]
      
        performSegue(withIdentifier: "goCity", sender: city)
    }
    
    override func tableView(_ tableView: UITableView, accessoryButtonTappedForRowWith indexPath: IndexPath){
        let selectedCity = citys[indexPath.row];
        
        performSegue(withIdentifier: "goDetail", sender: selectedCity)
    }
}

