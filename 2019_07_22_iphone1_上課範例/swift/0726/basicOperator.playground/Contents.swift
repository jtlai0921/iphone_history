import UIKit
/*
let age = -3
assert(age > 0, "這個age不可能小於0")
 */

let b = 10
var a = 5
a = b

let (x,y) = (1, 2)

(1 + 2) * 3
5 - 3
2 * 3
10.0 / 2.5

"hello" + "world"

9 % 4


//混合指定運算子
var a1 = 1;
a1 = a1 + 5;

var a2 = 1;
a2 += 1;


//比較運算子
//比較運算子得到結果一定是Bool
// a == b
// a != b
// a > b
// a >= b
// a < b
// a <= b

let name = "world"
if name == "world1" {
    //true body
    print("hello, world");
}else{
    //true body
    print("name不是world");
}

/*
 if question {
    answer
 }else{
    answer
 }
 
 */

//三元運算式
let contentHeight = 40
let hasHeader = false;
let rowHeight = contentHeight + (hasHeader ? 50 : 20)

//nil運算子 ??
let defaultColorName = "red"
var userDefinedColorName:String?;
var colorNameToUse = userDefinedColorName ?? defaultColorName

//範圍運算子
//1...4
//1..<4
//[...4]
//[1...]

for index in 1...5{
    print(index);
}

let names = ["anna", "alex", "brian", "jack"]
names[0]
names[3]

for i in 0 ..< names.count{
    print(names[i]);
}

for name in names{
    print(name);
}

for name in names[2...]{
    print(name);
}

for name in names[...2]{
    print(name);
}


