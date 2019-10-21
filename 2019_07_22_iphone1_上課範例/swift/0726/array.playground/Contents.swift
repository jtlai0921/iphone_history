import UIKit

var someInts = [Int]();
someInts.count
someInts.append(3)
someInts = [];

//建立一個陣列，有default的值
var threeDoubles = Array(repeating: 0.0, count: 3)
print(threeDoubles)

var anotherThreeDoubles = Array(repeating: 2.5, count: 3)

var sixDoubles = threeDoubles + anotherThreeDoubles;

var shoppingList:Array<String> = ["Eggs", "Milk"]

//存取修改裏面的內容
print(shoppingList);
shoppingList.count

if shoppingList.isEmpty{
    print("空的");
}else{
    print("不是空的");
}

shoppingList.append("Flour")

shoppingList += ["Baking Powder"]
shoppingList += ["Chocolate Spred", "Cheese", "Butter"]

var firstItem = shoppingList[0]
shoppingList[0] = "Six eggs";
shoppingList
shoppingList.insert("Maple Syrup", at: 1)
shoppingList[4...6]
shoppingList[4...6] = ["Bananas", "Apples"]
shoppingList.remove(at: 0)
shoppingList;

for love in shoppingList {
    print(love)
}

for (index, value) in shoppingList.enumerated() {
    print("item\(index + 1):\(value)");
}
