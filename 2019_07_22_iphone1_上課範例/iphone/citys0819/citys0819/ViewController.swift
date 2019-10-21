//
//  ViewController.swift
//  citys0819
//
//  Created by Robert on 2019/8/19.
//  Copyright © 2019 ios1. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var tableView:UITableView!;
    var citys = [[String:Any]]();
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //citylist.plist 轉成citys
        if let plistUrl = Bundle.main.url(forResource: "citylist", withExtension: "plist"){
            citys = NSArray(contentsOf: plistUrl) as! [[String:Any]]
        }
       
        
        
        
    }


}

extension ViewController:UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return citys.count;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        let city = citys[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "CELL", for: indexPath)
        cell.textLabel!.text = city["City"] as? String;
        cell.detailTextLabel!.text = city["Country"] as? String;
        cell.imageView!.image = UIImage(named: city["Image"] as! String)
        return cell;
    }
}

extension ViewController:UITableViewDelegate{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){
        let selectedRow = indexPath.row;
        let selectedCity = citys[selectedRow];
        let city = selectedCity["City"] as! String
        let alertController = UIAlertController(title: city, message: "您曾經去過嗎?", preferredStyle: .alert);
        let yesAction = UIAlertAction(title: "YES", style: .default){
            (alert:UIAlertAction) -> Void in
            print("使用者按了yes");
        }
        let noAction = UIAlertAction(title: "NO", style: .destructive){
            (alert:UIAlertAction) -> Void in
            print("使用者按了no");
        }
        alertController.addAction(yesAction)
        alertController.addAction(noAction)
        
        present(alertController, animated: true, completion: nil)
    }
}
