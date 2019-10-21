//
//  DataSource.swift
//  mvcModal0821
//
//  Created by Robert on 2019/8/21.
//  Copyright © 2019 ios1. All rights reserved.
//

import Foundation
class City{
    let cityName:String;
    let continent:String;
    let country:String;
    let image:String;
    let local:String;
    let lat:Double;
    let long:Double;
    let url:String;
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
}

class DataSource{
    static let main = DataSource();
    var citys:[City] = {
        let pathOfPlist = Bundle.main.path(forResource: "citylist", ofType: "plist")!
        let citysArray =  NSArray(contentsOfFile: pathOfPlist) as! [[String:Any]]
        var tempCitys = [City]();
        for cityDic in citysArray{
            let cityName = cityDic["City"] as! String;
            let continent = cityDic["Continent"] as! String;
            let country = cityDic["Country"] as! String;
            let image = cityDic["Image"] as! String;
            let local = cityDic["Local"] as! String;
            let lat = cityDic["lat"] as! Double;
            let long = cityDic["long"] as! Double;
            let url = cityDic["url"] as! String;
            let city = City(cityName:cityName, continent: continent, country: country, image: image, local: local, lat: lat, long: long, url: url);
            tempCitys.append(city)
        }
        return tempCitys;
    }();
    
    
    
    
    
}
