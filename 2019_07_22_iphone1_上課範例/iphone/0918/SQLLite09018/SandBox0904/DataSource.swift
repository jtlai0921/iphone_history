//
//  DataSource.swift
//  SandBox0904
//
//  Created by Robert on 2019/9/6.
//  Copyright © 2019 ios1. All rights reserved.
//

import Foundation
import SQLite3

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
    var db:OpaquePointer!;
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
        guard sqlite3_open(documentsPath, &db) == SQLITE_OK else{
            print("sqlite3 db實體建立失敗");
            return nil;
        }
        var statement:OpaquePointer!;
        let sqlStatement = "SELECT name, continent, country, image, local, lat, long, url from city"
        guard sqlite3_prepare_v2(db, sqlStatement, -1, &statement, nil) == SQLITE_OK else{
            sqlite3_finalize(statement);
            print("建立sqlite3_statement失敗");
            return nil;
        }
        var tempCitys = [City]();
        while sqlite3_step(statement) == SQLITE_ROW{
            let name = String(cString: sqlite3_column_text(statement, 0))
            let continent = String(cString: sqlite3_column_text(statement, 1))
            let country = String(cString: sqlite3_column_text(statement, 2))
            let image = String(cString: sqlite3_column_text(statement, 3))
            let local = String(cString: sqlite3_column_text(statement, 4))
            let lat = sqlite3_column_double(statement, 5)
            let long = sqlite3_column_double(statement, 6)
            let url = String(cString: sqlite3_column_text(statement, 7))
            let city = City(cityName: name, continent: continent, country: country, image: image, local: local, lat: lat, long: long, url: url);
            tempCitys.append(city);
        }
        sqlite3_finalize(statement);
        return tempCitys;
    }
    
    subscript(cityName:String) -> Bool{
        guard sqlite3_open(documentsPath, &db) == SQLITE_OK else{
            print("sqlite3 db實體建立失敗");
            return false;
        }
        
        var statement:OpaquePointer!;
        let sqlStatement = "DELETE FROM city WHERE name = ?"
        guard sqlite3_prepare_v2(db, sqlStatement, -1, &statement, nil) == SQLITE_OK else{
            sqlite3_finalize(statement);
            print("建立sqlite3_statement失敗");
            return false;
        }
        
        sqlite3_bind_text(statement, 1, (cityName as NSString).utf8String, -1,nil)
        
        guard sqlite3_step(statement) == SQLITE_DONE else{
             sqlite3_finalize(statement);
            print("刪除失敗");
            return false;
        }
        
        
        return true;
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
        
        //將資料存入sqlite
        guard sqlite3_open(documentSqlitePath, &db) == SQLITE_OK else{
            print("sqlite3 db實體建立失敗");
            return;
        }
        
        for city in tempCitys{
            var statement:OpaquePointer!;
            let sqlStatement = "INSERT INTO city(name, continent, country, image, local, lat, long, url) VALUES(?,?,?,?,?,?,?,?)"
            
            guard sqlite3_prepare_v2(db, sqlStatement, -1, &statement, nil) == SQLITE_OK else{
                sqlite3_finalize(statement);
                print("建立sqlite3_statement失敗");
                return;
            }
            
            //binding資料
            sqlite3_bind_text(statement, 1, (city.cityName as NSString).utf8String, -1,nil)
            sqlite3_bind_text(statement, 2, (city.continent as NSString).utf8String, -1,nil)
            sqlite3_bind_text(statement, 3, (city.country as NSString).utf8String, -1,nil)
            sqlite3_bind_text(statement, 4, (city.image as NSString).utf8String, -1,nil)
            sqlite3_bind_text(statement, 5, (city.local as NSString).utf8String, -1,nil)
            sqlite3_bind_double(statement, 6, city.lat);
            sqlite3_bind_double(statement, 7, city.long);
            sqlite3_bind_text(statement, 8, (city.url as NSString).utf8String, -1,nil)
            
            guard sqlite3_step(statement) == SQLITE_DONE else{
                print("step失敗");
                sqlite3_finalize(statement);
                return
            }
            sqlite3_finalize(statement);
            print("新增成功");
        }
    }
    
    internal func filterWithContinent(continentName:String) -> [City]!{
        return nil;
    }
}
