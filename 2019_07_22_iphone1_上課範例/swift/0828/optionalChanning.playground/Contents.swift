import UIKit

class Person{
    var residence:Residence?;
}

class Residence{
    var numberOfRooms = 1;
}

let john = Person();
/*
if let residence = john.residence{
    let numberOfRooms = residence.numberOfRooms
}
 */

if let numberOfRooms = john.residence?.numberOfRooms{
    print("numberOfRooms:\(numberOfRooms)");
}else{
    print("沒有numberOfRooms");
}
