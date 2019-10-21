import UIKit
//把function儲存於變數的使用法
func addTwoInts(_ a:Int,_ b:Int) -> Int{ //(Int, Int) -> Int
    return a+b
}

func multiplyTwoInts(_ a:Int,_ b:Int) -> Int{ //(Int, Int) -> Int
    return a * b;
}

func printHelloWorld(){ //() -> Void
    print("Hello, world");
}

var mathFunction:(Int, Int) -> Int = addTwoInts

print("Result:\(mathFunction(2, 3))");

mathFunction = multiplyTwoInts;
print("Result:\(mathFunction(2, 3))");


//把function當作參數
func printMathResult(_ mathFunction:(Int,Int) -> Int,_ a:Int,_ b:Int){
    print(mathFunction(a,b));
}

printMathResult(addTwoInts, 3, 5)
printMathResult(multiplyTwoInts, 3, 5)
