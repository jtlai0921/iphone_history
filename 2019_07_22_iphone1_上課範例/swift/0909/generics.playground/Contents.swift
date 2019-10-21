import UIKit

func swapTwoInts(_ a:inout Int, _ b:inout Int){
    let temporaryA = a;
    a = b;
    b = temporaryA;
}
/*
var someInt = 3;
var anotherInt = 107;
swapTwoInts(&someInt, &anotherInt)
print("someInt=\(someInt), anotherInt=\(anotherInt)");
*/

func swapTwoStrings(_ a:inout String, _ b:inout String){
    let temporaryA = a;
    a = b;
    b = temporaryA;
}

func swapTwoDoubles(_ a:inout Double, _ b:inout Double){
    let temporaryA = a;
    a = b;
    b = temporaryA;
}

//Generic Functions
func swapTwoValues<T>(_ a:inout T, _ b:inout T){
    let temporaryA = a;
    a = b;
    b = temporaryA;
}

var someInt = 3
var anotherInt = 107
swapTwoInts(&someInt, &anotherInt);
print("someInt=\(someInt), anotherInt=\(anotherInt)");

var someString = "hello"
var anotherString = "world"
swapTwoValues(&someString, &anotherString)
print("someString=\(someString), anotherString=\(anotherString)");
//Generic Types
//[String]
//Array<String>

//[String:String]
//Dictionary<String:String>
//Array<Element>
//Dictionary<Key,Value>
enum NumberError:Error{
    case NumberIsError;
}

var numbers = [20, 46, 93, 18, 65];

let doubles = try? numbers.map{
    (first:Int) -> Double in
    if first == 20 {
        throw NumberError.NumberIsError;
    }
    return Double(first);
}
    



if doubles == nil {
    print("error");
}else{
    print(doubles!);
}


//Generic Type
struct IntStack{
    var items = [Int]();
    mutating func push(_ item:Int){
        items.append(item)
    }
    
    mutating func pop() -> Int{
        return items.removeLast();
    }
}

struct Stack<Element>{
    var items = [Element]();
    mutating func push(_ item:Element){
        items.append(item)
    }
    
    mutating func pop() -> Element{
        return items.removeLast();
    }
}

var stackOfString = Stack<String>()
stackOfString.push("uno")
stackOfString.push("dos")
stackOfString.push("tres")
stackOfString.push("cuatro")
