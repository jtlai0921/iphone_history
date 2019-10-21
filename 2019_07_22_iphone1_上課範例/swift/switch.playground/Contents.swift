import UIKit

let someCharacter:Character = "y"
switch someCharacter {
    case "a":
        print("is a");
    case "z":
        print("is z");
    default:
        print("is other");
}

//case 後使用範圍運算子
let approximateCount = 6222
switch approximateCount {
case 0:
    print("0");
case 1..<5:
    print("1~4");
case 5..<12:
    print("5~11");
case 12..<100:
    print("12~99");
case 100..<1000:
    print("100~999");
default:
    print(">=1000");
}

// switch tuple
//case tuple

let somePoint = (1, 1)
switch somePoint{
case (0, 0):
    print("x=0,y=0");
case (_, 0):
    print("x=any,y=0");
case (0, _):
    print("x=0,y=any");
case (-2...2,-2...2):
    print("x=-2...2,y=-2...2");
default:
    print("\(somePoint)");
}

//value binding
let anotherPoint = (2, 0)
switch anotherPoint{
case (let x,0):
    print("x=\(x), y=0");
case (0, let y):
    print("x=0, y=\(y)");
case let(x, y):
    print("x=\(x), y = \(y)");
}

//where
let yetAnotherPoint = (1, -1)
switch yetAnotherPoint{
case let(x, y) where x == y:
    print("x==y");
case let(x,y) where x == -y:
    print("x==-y");
case let (x,y):
    print("\(x),\(y)");
}
