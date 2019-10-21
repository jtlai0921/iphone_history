import UIKit

let names = ["Anna", "Alex", "Brian", "Jack"];
for name in names{
    print("Hello, \(name)!");
}

let numberOfLegs = [
    "spider":8,
    "ant":6,
    "cat":4
]

for (animalName, legCount) in numberOfLegs{
    print("\(animalName)有\(legCount)腳");
}

for index in 1...5{
    print("\(index) * 5 = \(index * 5)");
}


let base = 3;
let power = 10
var answer = 1;

for _ in 1...power{
    answer *= base;
}
print("\(base)的\(power)次方是\(answer)");

let minutes = 60
let minuteInterval = 5

for tickMark in 0..<minutes{
    print(tickMark)
}

for tickMark in stride(from: 0, to: minutes, by: minuteInterval){
    print(tickMark);
}

let hours = 12
let hourInterval = 3
for tickMark in stride(from: 3, through: hours, by: 3){
    print(tickMark)
}

