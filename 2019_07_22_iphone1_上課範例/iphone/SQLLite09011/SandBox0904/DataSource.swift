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
        documentsPath += "/sqlite0911.db"
        return documentsPath;
    }()
    
    private init(){
        //copy plist至documents
        copySQLiteToDocuments()
        
    }
    
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
    
    
    
    private func copySQLiteToDocuments(){
        let bundlePath = Bundle.main.path(forResource: "sqlite0911", ofType: "db")!;
        print(bundlePath);
        print(self.documentsPath)
        if !FileManager.default.fileExists(atPath: self.documentsPath){
            if (try? FileManager.default.copyItem(atPath: bundlePath, toPath: self.documentsPath)) != nil{
                print("copy 成功");
                plistFillDataToSqlite(documentSqlitePath: documentsPath)
            }else{
                print("copy失敗");
            }
        }
    }
    
    private func plistFillDataToSqlite(documentSqlitePath:String){
        let plistPath = Bundle.main.path(forResource: "citylist", ofType: "plist")!
        let nsArray = NSArray(contentsOfFile: plistPath);
        let dicOfcitys = nsArray as! [[String:Any]];
        
        var tempCitys = [City]();
        for cityDic in dicOfcitys{
            let city = City();
            for (key, value) in cityDic{
                switch(key){
                case "City":
                    city.cityName = value as! String;
                case "Continent":
                    city.continent = value as! String;
                case "Country":
                    city.country = value as! String;
                case "Image":
                    city.image = value as! String;
                case "Local":
                    city.local = value as! String;
                case "url":
                    city.url = value as! String;
                case "long":
                    city.long = value as! Double;
                case "lat":
                    city.lat = value as! Double;
                default:
                    break;
                }
            }
            
           tempCitys.append(city)
        }
        print(tempCitys);
    }
}
