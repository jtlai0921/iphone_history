//
//  ViewController.swift
//  simpleTableView1_0816
//
//  Created by Robert on 2019/8/16.
//  Copyright © 2019 ios1. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var names:[String]!;
    @IBOutlet var tableView:UITableView!;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let path = Bundle.main.path(forResource: "Names", ofType: "plist")!
        let namesDic = NSDictionary(contentsOfFile: path) as! [String:[String]]
        names = namesDic["names"]
        print(names.description)
        tableView.dataSource = self;
        
    }
}

extension ViewController:UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return names.count;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        let cell = tableView.dequeueReusableCell(withIdentifier: "CELL", for: indexPath)
        let rowIndex = indexPath.row;
        let name = names[rowIndex]
        cell.textLabel?.text = name;
        /*
        if (cell.textLabel?.text = name) != nil{
            print("給值成功");
        }
 */
        return cell;
    }
}

