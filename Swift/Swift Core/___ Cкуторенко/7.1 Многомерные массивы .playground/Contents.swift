import Cocoa

var greeting = "Hello, playground"
/*
 
 [0, 1, 0, 1, 0, 1, 0, 0]
 [0, 0, 1, 1, 1, 0, 0, 0]
 [1, 1, 1, 1, 1, 1, 1, 1]
 [0, 0, 1, 1, 1, 0, 0, 0]
 [0, 1, 0, 1, 0, 1, 0, 0]
 [1, 0, 0, 1, 0, 0, 1, 0]
 [0, 0, 0, 1, 0, 0, 0, 1]
 [0, 0, 0, 1, 0, 0, 0, 0]

*/
//Пометить все клетки на шахматной доске (двумерный массив с 1/0) которые бьет ферзь за два цикла и три условия.
var  dock = Array (repeating:Array(repeating: 0, count: 8), count: 8)


func printDock (dock: [[Int]]) {
    dock.forEach({print($0)})
}

var x = 3
var y = 4

func changeDock(dock: inout [[Int]], x: inout Int,  y: inout Int) {
    for (i, row) in dock.enumerated() {
        for (j, _) in row.enumerated() {
            if i == x-1 || j == y-1 {
                dock[i][j] = 1
            }
            if  abs(i-x+1) == abs(j-y+1){
                dock[i][j] = 1
            }
        }
    }
}

changeDock(dock: &dock, x: &x, y: &y)

printDock(dock: dock)


