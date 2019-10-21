import UIKit

let finalSquare = 25
var board = Array(repeating: 0, count: finalSquare+1)
board[03] = +08; board[06] = +3; board[09] = +10; board[10] = +02;
board[14] = -10; board[19] = -11; board[22] = -02; board[24] = -08;

var square = 0
var diceRoll = 0
while square < finalSquare{
    diceRoll += 1
    if diceRoll == 7 { diceRoll = 1};
    square += diceRoll;
    if square < board.count{
        square += board[square];
    }
}
print("Game over!")


