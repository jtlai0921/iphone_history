//
//  DataSource.swift
//  SandBox0904
//
//  Created by Robert on 2019/9/6.
//  Copyright © 2019 ios1. All rights reserved.
//

import Foundation
class City{
    var cityName:String;
    var continent:String;
    var country:String;
    var image:String;
    var local:String;
    var lat:Double;
    var long:Double;
    var url:String;
    init(cityName:String,continent:String,country:String,image:String,local:String,lat:Double,long:Double,url:String){
        self.cityName = cityName;
        self.continent = continent;
        self.country = country;
        self.image = image;
        self.local = local;
        self.lat = lat;
        self.long = long;
        self.url = url;
    }
    
    convenience init(){
        self.init(cityName:"",continent:"",country:"",image:"",local:"",lat:0.0,long:0.0,url:"")
    }
}

class DataSource{
    static let main:DataSource = DataSource();
    lazy var documentsPath:String = {
        var documentsPath = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first!
        print(documentsPath);
        documentsPath += "/citylist.plist"
        return documentsPath;
    }()
    
    var citys:[City]!{
        var tempCitys = [City]();
        let citysArray = NSArray(contentsOfFile: documentsPath) as! [[String:Any]];
        for item in citysArray{
            let city = City();
            city.cityName = item["City"] as! String;
            city.continent = item["Continent"] as! String;
            city.country = item["Country"] as! String;
            city.image = item["Image"] as! String;
            city.local = item["Local"] as! String;
            city.lat = item["lat"] as! Double;
            city.long = item["long"] as! Double;
            city.url = item["url"] as! String;
 
            tempCitys.append(city)
        }
        return tempCitys;
    }
    
    private init(){
        //copy plist至documents
       copyPlistToDocuments()
        
    }
    
    private func copyPlistToDocuments(){
        let bundlePath = Bundle.main.path(forResource: "citylist", ofType: "plist")!;
        
        
        if !FileManager.default.fileExists(atPath: self.documentsPath){
            if (try? FileManager.default.copyItem(atPath: bundlePath, toPath: self.documentsPath)) != nil{
                print("copy 成功");
            }else{
                print("copy失敗");
            }
        }
    }
}
