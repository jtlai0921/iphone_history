//
//  SearchViewController.swift
//  SandBox0904
//
//  Created by Robert on 2019/9/23.
//  Copyright © 2019 ios1. All rights reserved.
//

import UIKit

class SearchViewController: UITableViewController {
    var citys:[City] = DataSource.main.citys;
    let searchController = UISearchController(searchResultsController: nil);
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.tableHeaderView = searchController.searchBar
        searchController.searchResultsUpdater = self;
    }
      

}

extension SearchViewController{
    //UITableViewDataSource
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return citys.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        let city = citys[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "CELL", for: indexPath);
        cell.textLabel?.text = city.cityName
        cell.detailTextLabel?.text = city.country
        cell.imageView?.image = UIImage(named: city.image)
        return cell;
    }
}

extension SearchViewController:UISearchResultsUpdating{
    func updateSearchResults(for searchController: UISearchController){
        let searchBar = searchController.searchBar;
        if searchBar.text! == ""{
            citys = DataSource.main.citys;
        }else{
            citys = DataSource.main.searchCity(key: searchBar.text!) ?? [City]();
        }
        tableView.reloadData();
    }
}
