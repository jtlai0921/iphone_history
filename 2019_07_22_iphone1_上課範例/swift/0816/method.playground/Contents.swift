import UIKit

class Counter{
    var count = 0;
    
    func increment(){
        count += 1;
    }
    
    func increment(by amount:Int){
        count += amount;
    }
    
    func reset(){
        count = 0;
    }
}

let counter = Counter();
counter.increment();
counter.count

counter.increment(by: 6)
counter.count

counter.reset();
counter.count
/*
struct Point{
    var x=0.0, y=0.0;
    func isToTheRightOf(x:Double) -> Bool{
        return self.x > x;
    }
}

let somePoint = Point(x: 4.0, y: 5.0)
if somePoint.isToTheRightOf(x: 1.0){
    print("我的x:\(somePoint.x)大於x1.0");
}
 */

struct Point{
    var x = 0.0, y = 0.0;
    mutating func moveBy(x deltaX:Double, y deltaY:Double){
        x += deltaX;
        y += deltaY;
    }
}

var somePoint = Point(x: 1.0, y: 1.0);
somePoint.moveBy(x: 2.0, y: 3.0)
somePoint.x
somePoint.y




