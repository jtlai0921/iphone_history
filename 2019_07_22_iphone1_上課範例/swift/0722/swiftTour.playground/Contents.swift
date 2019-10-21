import UIKit

var myVariable = 42
myVariable = 50
let myConstant = 42
//myConstant = 50

print(myVariable)
//明確宣告和不明確宣告
let implicitInteger = 70
let implicitDouble = 70.0
let explicitDouble:Double = 70

//一定要相同的資料類型才可以運算
var label = "The width is "
let width = 94
let widthLable = label + String(width)

let apples = 3
let oranges = 5
//let appleSummary = "我有" + String(apples) + " apples,還有" + String(oranges) + "橘子"
//字串插補
let appleSummary = "我有 \(apples) apples,還有 \(oranges) 個橘子"
print(appleSummary)

let quotation = """
信用卡市場百家爭鳴，如何牢牢抓住消費者眼球是關鍵。玉山銀行看準商機，攜手萬事達卡國際組織合作，全新「玉山U Bear信用卡」今日正式亮相，主打「熊精彩、熊便利、熊划算及熊挺你」4大優惠，最高現金回饋20%，搶攻市場大餅。

「玉山U Bear信用卡」4大現金回饋優惠包括，「熊挺你」刷卡享1%消費回饋無上限，當期帳單折抵；「熊划算」指定網路消費享5%回饋，每期上限600元；「熊便利」四大超商使用玉山Wallet掃碼享8%回饋，每期上限200元；「熊精彩」民眾於指定電影院現場刷卡，享20%現金回饋，每期回饋上限200元。
"""
print(quotation)

var shoppingList = ["catfish", "water", "tulips"]
shoppingList[1]
shoppingList[1] = "bottle of water"
shoppingList.append("blue paint")
shoppingList

