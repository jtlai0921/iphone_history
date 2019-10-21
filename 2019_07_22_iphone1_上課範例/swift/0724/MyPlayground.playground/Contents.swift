import UIKit
//tuple
//tuple資料類型表示法
//tuple值的表示法

let http404Error:(Int, String) = (404, "NotFound")

//如何取出tuple
//3種方法
//方法1,索引法
http404Error.0
http404Error.1

//拆解法
let (statusCode, statusMessage) = http404Error;
statusCode
statusMessage

//只抓一個值
let (justTheStatusCode, _) = http404Error;
justTheStatusCode;

//方法3 tag法
var http200Status = (statusCode:200,description:"ok")
http200Status.statusCode
http200Status.description

//optionals
let possibleNumber = "123a"
let convertedNumber = Int(possibleNumber)

if convertedNumber == nil {
    print("轉換失敗");
}else{
    print("轉換成功,值是\(convertedNumber!)");
}

var serverResponseCode:Int? = 404;
//serverResponseCode = nil;

let value = serverResponseCode!;


let myInt = 20;
let myOptionalInt:Int? = nil;

myInt.description
//optional處理方式1(直接force unwrapping)
//myOptionalInt!.description

//使用if檢查是不是nil
if myOptionalInt == nil {
    print("無法執行，會crash");
}else{
    myOptionalInt!.description;
}






