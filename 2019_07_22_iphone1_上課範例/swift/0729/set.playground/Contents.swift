import UIKit

var letters = Set<Character>();
letters.count

letters.insert("a")
letters.count;
letters = [];
letters.count;

var favoriteGenres:Set = ["Rock", "Classical", "Hip hop"]
favoriteGenres.count;

if favoriteGenres.isEmpty {
    print("空的");
}else{
    print("不是空的");
}

favoriteGenres.insert("Jazz")
/*
let removeGenre = favoriteGenres.remove("Rock")
if removeGenre != nil {
    print("我已經移除\(removeGenre!)");
}
 */

//optional binding

if let removeGenre = favoriteGenres.remove("rock"){
    print("我已經移除\(removeGenre)");
}else{
    print("沒有這個值，移除錯誤");
}

if favoriteGenres.contains("Funk"){
    print("有");
}else{
     print("沒有");
}

for genre in favoriteGenres{
    print(genre);
}
print("============")
print("*", separator: "", terminator: "")
print("*", separator: "", terminator: "")
print("*", separator: "", terminator: "\n")
for genre in favoriteGenres.sorted(){
    print("gere=\(genre)");
}


//set 運算
let oddDigits:Set = [1, 3, 5, 7, 9]
let evenDigits:Set = [0, 2, 4, 6, 8]
let singleDigitPrimeNumbers:Set = [2, 3, 5, 7]


oddDigits.union(evenDigits).sorted()

oddDigits.intersection(evenDigits).sorted();

oddDigits.subtracting(singleDigitPrimeNumbers).sorted()

oddDigits.symmetricDifference(singleDigitPrimeNumbers).sorted()
