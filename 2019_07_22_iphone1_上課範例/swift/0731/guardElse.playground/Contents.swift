import UIKit

func greet(person:[String:String]){
    
    guard let name = person["name"] else{
        print("沒有name");
        return;
    }
    /*
    if person["name"] == nil {
        print("沒有name");
        return;
    }
    
    let name = person["name"];
    */
    
    
    print("Hello \(name)");
    
    guard let location = person["location"] else{
        print("沒有location");
        return;
    }
    
    print("您的位置是\(location)");
}

greet(person: ["name":"john"])
greet(person: ["name":"john", "location":"Cupertino"])
