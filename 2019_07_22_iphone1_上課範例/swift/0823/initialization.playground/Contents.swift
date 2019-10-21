import UIKit

struct Fahrenheit{//華氏溫度
    var temperature = 32.0;
    /*
    init(){
        temperature = 32.0;
    }
 */
}

var f = Fahrenheit();
f.temperature;
var f1 = Fahrenheit(temperature: 50.0);

struct Celsius{//攝氏
    var temperatureInCelsius:Double;
    init(fromFahrenheit fahrenheit:Double){
        temperatureInCelsius = (fahrenheit - 32.0) / 1.8
    }
    
    init(fromKelvin kelvin:Double){
        temperatureInCelsius = kelvin - 273.15;
    }
    
    init(_ celsius:Double){
        temperatureInCelsius = celsius;
    }
}

let boilingPointOfWater = Celsius(fromFahrenheit: 212.0)
boilingPointOfWater.temperatureInCelsius

let freezingPointOfWater = Celsius(fromKelvin: 273.15);
freezingPointOfWater.temperatureInCelsius

let bodyTemperature = Celsius(37.0)
bodyTemperature.temperatureInCelsius;

struct Color{
    let red,green,blue:Double
    init(red:Double, green:Double, blue:Double){
        self.red = red;
        self.green = green;
        self.blue = blue;
    }
    
    init(white:Double){
        red = white;
        green = white;
        blue = white;
    }
}

let magenta = Color(red: 1.0, green: 0.0, blue: 1.0)
let halfGray = Color(white: 0.5);

//let veryGreen = Color(0.0, 1.0, 0.0) //error,沒有引數名稱

class SurveyQuestion{
    var text:String;
    var response:String?;
    init(text:String){
        self.text = text;
    }
    
    func ask(){
        print(text)
    }
}

let cheeseQuestion = SurveyQuestion(text: "Do you like cheese?")
cheeseQuestion.ask();
cheeseQuestion.response = "YES, I do like cheese."


//Default Initializers
class ShoppingListItem{
    var name:String?
    var quantity = 1
    var purchased = false
}

var item = ShoppingListItem();

//memberwise Initializer
struct Size{
    var width = 0.0, height = 0.0
}

let twoByTwo = Size(width: 2.0, height: 2.0);


//Initializer Delegation for value Types
struct Point{
    var x = 0.0, y = 0.0
}

struct Rect{
    var origin:Point = Point();
    var size:Size = Size();
    
    init(){};
    
    init(origin:Point,size:Size){
        self.origin = origin;
        self.size = size;
    }
    
    init(center:Point, size:Size){
        let originX = center.x - (size.width/2)
        let originy = center.y - (size.height/2)
        self.init(origin: Point(x: originX, y: originy), size: size);
    }
}

let basicRect = Rect();
let originRect = Rect(origin: Point(x: 2.0, y: 2.0), size: Size(width: 5.0, height: 5.0))
let centerRect = Rect(center: Point(x: 4.0, y: 4.0), size: Size(width: 3.0, height: 3.0))


