import UIKit

func greet(person:String) -> String{ //定義時使用參數名稱
    let greeting = "Hello, " + person + " !";
    return greeting;
}
//呼叫時使用引數名稱
print(greet(person: "Anna"));

print(greet(person: "Brian"));

func greetAgain(person:String) -> String{
    return "Hello again, " + person + "!"
}


//function沒有參數
func sayHelloWorld() -> String{
    return "hello, world";
}

print(sayHelloWorld())


//function和多個參數
func greet(person:String, alreadyGreeted:Bool) -> String{
    if alreadyGreeted {
        return greetAgain(person: person)
    }else{
        return greet(person: person)
    }
}

print(greet(person: "Tim", alreadyGreeted: false));


//function 沒有return value
func greet1(person:String){
    print("Hello, \(person)");
}

func printAndCount(string:String) -> Int{
    print(string)
    return string.count
}

func printWithoutCounting(string:String){
    let _ = printAndCount(string: string)
}

let _ = printAndCount(string: "hello, world")

printWithoutCounting(string: "hello, world")

func minMax(array:[Int]) -> (min:Int, max:Int)?{
    if array.isEmpty {return nil}
    var currentMin = array[0];
    var currentMax = array[0];
    for value in array[1...]{
        if value < currentMin{
            currentMin = value;
        }else if value > currentMax{
            currentMax = value;
        }
    }
    return (currentMin, currentMax)
}

if let bounds = minMax(array: [8, -6, 2, 109, 3, 71]){
    print("最小值是\(bounds.min), 最大值是\(bounds.max)")
}
//print("最小值是\(bounds.min), 最大值是\(bounds.max)");
if let bounds = minMax(array: [Int]()){
    print("最小值是\(bounds.min), 最大值是\(bounds.max)")
}else{
    print("minMax出錯了");
}

//參數名稱和引數名稱
func someFunction(firstParameterName:Int, secondParameterName:Int){
    
}

someFunction(firstParameterName: 1, secondParameterName: 3)

//指定引數名稱
func someFunction(argumentLabel parameterName:Int){
    //使用參數名稱parameterName
}

someFunction(argumentLabel: 5)

func greet(person:String, from hometown:String) -> String{
    return "Hello!\(person)! Glad you could visit from \(hometown)"
}

greet(person: "Bill", from: "Cupertino")

//省略引數名稱
func someFuntion(_ firstParameterName:Int, secondParameterName:Int){
    
}

someFuntion( 5, secondParameterName: 1)

//有default value 參數
func someFunction(parameterWithoutDefault:Int, parameterWithDefault:Int = 12){
    
}

someFunction(parameterWithoutDefault: 8)
someFunction(parameterWithoutDefault: 8, parameterWithDefault: 10)

//沒有限定數量的參數
func arithmeticMean(_ numbers:Double...) -> Double{
    var total:Double = 0;
    for number in numbers{
        total += number;
    }
    
    return total;
}

print(arithmeticMean(1.0, 2.0, 3.0, 4.0, 5.0))
arithmeticMean(3, 8.25, 18.74)


