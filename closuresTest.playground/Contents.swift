import UIKit


func calculator (n1: Int, n2: Int, operation: (Int, Int) -> Int) -> Int    {
    return operation(n1, n2)
}

func add (no1: Int, no2: Int) -> Int {
    return no1 + no2
}

//Closure
/*

{ (no1: Int, no2: Int) -> Int in
    return no1 * no2
}
*/

func multiply (no1: Int, no2: Int) -> Int   {
    return no1 * no2
}

//calculator(n1: 2, n2: 3, operation: add)
//calculator(n1: 2, n2: 3, operation: multiply)

//Swift is type inferance, so you don't have to disclose the type of data in the closure
let result = calculator(n1: 2, n2: 3) { $0 * $1 }
print(result)
//$0 => first parameter
// If your last parameter is a closure, you can remove the last parameter's name => trailing closure


let array = [6, 2, 3, 9, 4, 1]

func addOne (n1: Int) -> Int    {
    return n1 + 1
}

array.map(addOne)

let array_result = array.map{$0 + 1}
print(array_result)
let newArray = array.map{"\($0)"}
print(newArray)
