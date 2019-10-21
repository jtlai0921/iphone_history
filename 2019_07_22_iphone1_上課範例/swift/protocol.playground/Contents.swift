import UIKit

//protocol的語法
//property Requirements
protocol SomeProtocol{
    var mustBeSettable:Int {get set}
    var doesNotNeedToBeSettable:Int {get}
}

protocol AnotherProtocol{
    static var someTypeProperty:Int{get set}
}


protocol FullyNamed{
    var fullName:String {get}
}

struct Person:FullyNamed{
    var fullName:String;
}

let john = Person(fullName: "John Appleseed")

class Starship:FullyNamed{
    var prefix:String?;
    var name:String;
    init(name:String, prefix:String? = nil){
        self.name = name;
        self.prefix = prefix;
    }
    
    var fullName: String{
        return (prefix != nil ? prefix! + " " : "") + name;
    }
}

var ncc1701 = Starship(name: "Enterprise", prefix: "USS")
print(ncc1701.fullName);


//Method Requirements

protocol SomeProtocol1{
    static func someTypeMethod();
}

protocol RandomNumberGenerator{
    func random() -> Double;
}

class LinearCongruentialGenerator{
    var lastRandom = 42.0
    let m = 139968.0
    let a = 3877.0
    let c = 29573.0
}

extension LinearCongruentialGenerator:RandomNumberGenerator{
    func random() -> Double{
        lastRandom = ((lastRandom * a + c).truncatingRemainder(dividingBy: m));
        return lastRandom / m;
    }
}

protocol Togglabel{
    mutating func toggle();
}

enum OnOffSwitch:Togglabel{
    case off, on
    
    mutating func toggle(){
        switch self{
        case .off:
            self = .on
        case .on:
            self = .off
        }
    }
}

//initializer Requirements
protocol SomeProtocol2{
    init(someParameter:Int)
}

class SomeClass2:SomeProtocol2{
    required init(someParameter:Int){
        
    }
}
