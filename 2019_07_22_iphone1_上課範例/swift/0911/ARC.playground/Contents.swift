import UIKit
/*
class Person{
    let name:String;
    init(name:String){
        self.name = name;
        print("\(name) is begin initialized");
    }
    
    deinit {
        print("\(name) is being deinitialized");
    }
}

var reference1:Person?
var reference2:Person?
var reference3:Person?

reference1 = Person(name: "John")
reference2 = reference1
reference3 = reference1
reference1 = nil;
reference2 = nil;
reference3 = nil;
*/
//strong Reference cycle between Class Instance
//我擁有你，你擁有我

class Person{
    let name:String;
    init(name:String){
        self.name = name;
    }
    
    var apartment:Apartment?
    
    deinit {
        print("\(name) is being deinitialized");
    }
}

class Apartment{
    let unit:String
    init(unit:String){
        self.unit = unit;
    }
    //如果有這個實體屬性不是optional type情形,必需要使用unowned
    weak var tenant:Person?
    deinit {
         print("\(unit) is being deinitialized");
    }
    
}

var john:Person?
var unit4A:Apartment?;
john = Person(name: "John")
unit4A = Apartment(unit: "4A")
john!.apartment = unit4A;
unit4A!.tenant = john;
john = nil;
unit4A = nil;



