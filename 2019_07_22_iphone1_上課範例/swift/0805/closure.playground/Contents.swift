import UIKit

let names = ["Chris", "Alex", "Ewa", "Barry", "Daniella"];
print(names.sorted());

//一般function
func backward(_ s1:String,_ s2:String) -> Bool{
    return s1 > s2;
}

var reverseNames = names.sorted(by: backward)

//使用closure來當作參數
reverseNames = names.sorted(by: {
    (s1:String,s2:String) -> Bool in
    return s1 < s2;
})

//closure參數的資料可以省略
reverseNames = names.sorted(by: {
    (s1,s2)  in
    return s1 < s2;
})


//程式區塊只有一行，可以省略return
reverseNames = names.sorted(by: {
    (s1,s2)  in s1 < s2;
})

//參數名稱可以省略
reverseNames = names.sorted(by: {$0 < $1})


//放在尾巴的closure
reverseNames = names.sorted(){
        $0 < $1
}

//使用標準加trailing closure
reverseNames = names.sorted(){
    (s1:String,s2:String) -> Bool in
    return s1 < s2;
}
