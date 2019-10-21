import UIKit

var namesOfIntegers = [Int:String]()
namesOfIntegers[16] = "sixteen"

namesOfIntegers
namesOfIntegers = [:]
namesOfIntegers

var airports:[String:String] = [
    "YYZ": "Toronto Pearson",
    "DUB": "Dublin"
]

airports.count

if airports.isEmpty{
    print("空的")
}else{
    print("不是空的")
}

airports["LHR"] = "London"
airports["LHR"] = "London Heathrow"

if let oldValue = airports.updateValue("Dublic Airport", forKey: "DUB"){
    print("oldValue = \(oldValue)");
}else{
    print("更新失敗");
}


if let airportName = airports["DUB"]{
    print(airportName);
}else{
    print("沒有這個key");
}

airports["APL"] = "Apple International"
airports["APL"] = nil;

for (airportCode, airportName) in airports{
    print("\(airportCode):\(airportName)");
}

for airportCode in airports.keys{
    print("airport code:\(airportCode)");
}

for airportValue in airports.values{
    print("airport value:\(airportValue)");
}
