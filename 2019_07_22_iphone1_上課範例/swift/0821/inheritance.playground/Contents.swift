import UIKit

class Vehicle{
    var currentSpeed = 0.0
    var description:String{
        return "現在的速度是每小時\(currentSpeed)公里"
    }
    func makeNoise(){
        
    }
}

let someVehicle = Vehicle();
print(someVehicle.description);


class Bicycle:Vehicle{
    var hasBasket = false;
}

let bicycle = Bicycle();
bicycle.hasBasket = true;
bicycle.currentSpeed = 15.0;
print(bicycle.description);


class Tandem:Bicycle{
    var currentNumberOfPassengers = 0;
}


let tandem = Tandem();
tandem.hasBasket = true;
tandem.currentNumberOfPassengers = 2
tandem.currentSpeed = 22.0;
print("Tandem:\(tandem.description)");

class Train:Vehicle{
    //overrider methods
    override func makeNoise() {
        print("choo choo");
    }
}

let train = Train();
train.makeNoise();

class Car:Vehicle{
    var gear = 1;
    //override computed property
    override var description:String{
        return "\(super.description),目前的檔數是:\(gear)"
    }
}

let car = Car();
car.currentSpeed = 25.0;
car.gear = 3;
print("Car:\(car.description)");

//override property observer
class AutomaticCar:Car{
    override var currentSpeed: Double{
        didSet{
            gear = Int(currentSpeed / 10.0) + 1
        }
    }
}

let automatic = AutomaticCar()
automatic.currentSpeed = 35.0;
print("automatic:\(automatic.description)");
