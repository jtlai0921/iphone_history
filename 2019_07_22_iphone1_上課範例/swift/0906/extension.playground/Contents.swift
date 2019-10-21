import UIKit

extension Double{
    //擴充computed property
    var km:Double{
        return self * 1_000.0;
    }
    
    var m:Double{
        return self;
    }
    
    var cm:Double{
        return self / 100.0
    }
    
    var mm:Double{
        return self/1_000.0;
    }
    
    var ft:Double{
        return self / 3.28084;
    }
}

let oneInch = 25.4.mm;
let threeFeet = 3.0.ft;
let aMarathon = 42.km + 195.m;

struct Size{
    var width = 0.0, height = 0.0;
}

struct Point{
    var x = 0.0, y = 0.0;
}

struct Rect{
    var origin = Point();
    var size = Size();
}

let defaultRect = Rect();
let memberwiseRect = Rect(origin: Point(x: 2.0, y: 2.0), size: Size.init(width: 5.0, height: 5.0))


extension Rect{
    //擴充initializer
    init(center:Point, size:Size){
        let originX = center.x - (size.width/2)
        let originY = center.y - (size.height/2)
        self.init(origin: Point.init(x: originX, y: originY), size: size)
    }
}

let centerRect = Rect(center: Point.init(x: 4.0, y: 4.0), size: Size.init(width: 3.0, height: 3.0))


//擴充method

extension Int{
    func repetitions(task:() -> Void){
        for _ in 0..<self{
            task();
        }
    }
}

3.repetitions(task: {
    print("Hello!");
})

//擴充mutating Instance method

extension Int{
    mutating func square(){
        self = self * self;
    }
}

var someInt = 3;
someInt.square();


//extension subscript
extension Int{
    subscript(digitIndex:Int) -> Int{
        var decimalBase = 1;
        for _ in 0..<digitIndex{
            decimalBase *= 10;
        }
        
        return (self/decimalBase) % 10
    }
}

746381295[0];
746381295[1];
746381295[2];
746381295[8];

//擴充巢狀類別
extension Int{
    enum Kind{
        case negative, zero, positive;
    }
    
    var kind:Kind{
        switch self{
        case 0:
            return Kind.zero
        case let x where x > 0:
            return .positive
        default:
            return .negative
        }
    }
}

6.kind
(-7).kind
0.kind;
