//
//  ViewController.swift
//  SandBox0904
//
//  Created by Robert on 2019/9/4.
//  Copyright © 2019 ios1. All rights reserved.
//

import UIKit

class ViewController: UICollectionViewController {
    //let dataSource = DataSource.main;
    var citys:[City]! = DataSource.main.citys
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(citys[0].cityName)
    }

    @IBAction func userDelete(_ sender:UIButton){
        //print(sender.superview?.superview is CityViewCell);
        let cityViewCell = sender.superview?.superview as! CityViewCell;
        let alertController = UIAlertController(title: "警告", message: "確定要刪除嗎?", preferredStyle: .alert);
        let action_ok = UIAlertAction(title: "確定", style: .destructive) { (alertAction:UIAlertAction) in
            print("使用者按了確定");
            if let indexPath = self.collectionView.indexPath(for: cityViewCell){
                
                self.citys.remove(at: indexPath.item)
                self.collectionView.reloadData();
            }
        }
        
        let action_cancel = UIAlertAction(title: "取消", style: .cancel, handler: nil);
        alertController.addAction(action_ok);
        alertController.addAction(action_cancel);
        
        present(alertController, animated: true, completion: nil);
        /*
        
 */
 
        
    }

}

extension ViewController{
    //UICollectionViewDataSource
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int{
        return citys.count;
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell{
        let city = citys[indexPath.item]
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CELL", for: indexPath) as! CityViewCell;
        cell.cityImage.image = UIImage(named: city.image);
        cell.cityNameLabel.text = city.cityName;
        //cell.deleteButton.itemNumber = indexPath.item;
        return cell;
        
    }
}

extension ViewController{
    //UICollectionViewDelegate
}
