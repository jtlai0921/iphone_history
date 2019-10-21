import UIKit

var temperatureInFahrenheit = 30;
if temperatureInFahrenheit <= 32 {
    print("非常冷");
}

temperatureInFahrenheit = 40;
if temperatureInFahrenheit <= 32 {
    print("非常冷");
}else{
    print("不是非常冷");
}


temperatureInFahrenheit = 70;

if temperatureInFahrenheit <= 32 {
    print("非常冷");
}else if temperatureInFahrenheit >= 86{
    print("非常溫暖");
}else{
    print("不是非常冷");
}

