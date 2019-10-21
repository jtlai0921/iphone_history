import UIKit

//定義列舉
enum CompassPoint{
    case north
    case south
    case east
    case west
}

enum Planet{
    case mercury, venus, earth, mars, jupiter, saturn, uranus, neptune
}

var directionToHead = CompassPoint.west
directionToHead = .east

var btn = UIButton(type: .infoDark)
//directionToHead = .south

//switch檢查列舉內的成員是那一個
switch directionToHead{
    case .north:
        print("north");
    case .south:
        print("south");
    case .east:
        print("east");
    case .west:
        print("west");
}

let somePlanet = Planet.earth
switch somePlanet{
    case .earth:
        print("earth");
    default:
        print("otherPlanet");
}


enum Beverage:CaseIterable{
    case coffee, tea, juice
}

let numberOfChoices = Beverage.allCases.count

for beverage in Beverage.allCases{
    print(beverage)
}



//列舉和成員相關的值

enum Barcode{
    case upc(Int,Int,Int,Int)
    case qrCode(String)
}

var productBarcode = Barcode.upc(8, 85909, 51226, 3)
//productBarcode = .qrCode("ABCDEFGHIJKLMNOP")

switch productBarcode{
case .upc(let numberSystem, let manufacturer, let product, let check):
    print("UPC:\(numberSystem),\(manufacturer),\(product),\(check)");
case .qrCode(let productCode):
    print("QR Code:\(productCode)");
    
}

//列舉和純值(raw value)
enum Planet1:Int{
    case mercury=1, venus, earth, mars, jupiter, saturn, uranus, neptune
}

Planet1.mercury.rawValue
Planet1.neptune.rawValue


