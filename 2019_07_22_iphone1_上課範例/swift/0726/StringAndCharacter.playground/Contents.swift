import UIKit

let someString = "Some string literal value"
var emptyString = ""
var anotherEmptyString = String();
if emptyString.isEmpty {
    print("emptyString是空字串");
}

var variableString = "Horse";
variableString += " and carriage";

for char in "Dog!🐶" {
    print(char);
}

let exclamationMark:Character = "!"

//字串插補
let multiplier = 3;
let message = "\(multiplier) times 2.5 is \(Double(multiplier) * 2.5)";
