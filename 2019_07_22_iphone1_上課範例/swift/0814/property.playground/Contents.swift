import UIKit

struct FixedLengthRange{
    var firstValue:Int
    let length:Int
}

var rangeOfThreeItems = FixedLengthRange(firstValue: 0, length: 3)
rangeOfThreeItems.firstValue = 6


let rangeOfFourItems = FixedLengthRange(firstValue: 0, length: 4)
rangeOfThreeItems.firstValue = 6

class DataImporter{
   var filename = "data.txt"
}

class DataManager{
    lazy var importer = DataImporter();
    var data = [String]()
}

let manager = DataManager();
manager.data.append("some data")
manager.data.append("some more data")
print(manager.importer.filename);

    

//computed property
//get,set
//get

struct Cuboid{
    var width=0.0, height=0.0, depth=0.0;
    //read-onle computed property
    var volume:Double{
        return width * height * depth;
    }
}

let fourByFiveByTwo = Cuboid(width: 4.0, height: 5.0, depth: 2.0)
print(fourByFiveByTwo.volume);

struct Point{
    var x=0.0, y=0.0;
}

struct Size{
    var width=0.0, height = 0.0;
}

struct Rect{
    var origin = Point();
    var size = Size();
    var center:Point{
        get{
            let centerX = origin.x + size.width/2;
            let centerY = origin.y + size.height/2;
            return Point(x: centerX, y: centerY);
        }
        
        set(newCenter){
            origin.x = newCenter.x - (size.width/2);
            origin.y = newCenter.y - (size.height/2);
        }
    }
}

var square = Rect(origin: Point(x: 0.0, y: 0.0), size: Size(width: 10.0, height: 10.0));
square.origin.x
square.origin.y
square.size.width
square.size.height

let squareCenter = square.center;
squareCenter.x
squareCenter.y

square.center = Point(x: 15.0, y: 15.0)
square.origin.x
square.origin.y

//store property + property observer

class StepCounter{
    //store property + property observer
    var totalSteps:Int = 0{
        willSet{
            print("現在傳進來的值是\(newValue)");
        }
        
        didSet{
            if totalSteps > oldValue{
                print("我增加了\(totalSteps-oldValue)");
            }
        }
    }
}

let stepCounter = StepCounter();
stepCounter.totalSteps = 200;
stepCounter.totalSteps = 360;
