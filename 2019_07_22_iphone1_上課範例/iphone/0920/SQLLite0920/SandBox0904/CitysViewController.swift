//
//  CitysViewController.swift
//  SandBox0904
//
//  Created by Robert on 2019/9/16.
//  Copyright © 2019 ios1. All rights reserved.
//

import UIKit

class CitysViewController: UITableViewController {
    @IBOutlet var continentSeg:UISegmentedControl!;
    var citys:[City]! = DataSource.main.citys;
    let continents = ["Asia", "Europe","North America","South America","Oceania"]
    override func viewDidLoad() {
        super.viewDidLoad()
        continentSeg.selectedSegmentIndex = -1;
    }
    
    @IBAction func continentSelected(_ segmented:UISegmentedControl){
        let selectedIndex = segmented.selectedSegmentIndex;
        let selectedString = continents[selectedIndex]
        citys = DataSource.main.filterWithContinent(continentName: selectedString) ?? [City]()
        tableView.reloadData();
    }
}

extension CitysViewController{
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
    /*
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath){
        print(indexPath.row)
        
        //刪除資料庫資料
        //刪除row資料
    }
 */
    
    override func tableView(_ tableView: UITableView, editActionsForRowAt indexPath: IndexPath) -> [UITableViewRowAction]?{
        let shareAction = UITableViewRowAction(style: .default, title: "分享"){
            (rowAction:UITableViewRowAction, indexPath:IndexPath) -> Void in
            print("分享");
        }
        shareAction.backgroundColor = UIColor.green;
        
        let deleteAction = UITableViewRowAction(style: .default, title: "刪除") { (rowAction:UITableViewRowAction, indexPath:IndexPath) in
            let rowIndex = indexPath.row;
            //delete 資料庫資料 執行subscript
            let city = self.citys[rowIndex];
            if DataSource.main[city.cityName]{
                //如果資料庫刪除成功
                self.citys.remove(at: rowIndex)
                tableView.deleteRows(at: [indexPath], with: .automatic)
            }
        }
        return [shareAction,deleteAction];
    }
    
}
