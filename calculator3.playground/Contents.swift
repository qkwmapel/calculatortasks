import UIKit

class Calculator {
    var add = AddOperation()
    var Subtract = SubtractOperation()
    var Multiply = MultiplyOperation()
    var Divide = DivideOperation()
    var Remainder = RemainderOperation()
    
    func calculate(oper: String, firstNumber: Int, secondNumber: Int ) -> Double {
        switch oper {
        case "+" :
            return add.operate(firstNumber: firstNumber, secondNumber: secondNumber)
        case "-" :
            return Subtract.operate(firstNumber: firstNumber, secondNumber: secondNumber)
        case "*" :
            return Multiply.operate(firstNumber: firstNumber, secondNumber: secondNumber)
        case "/" :
            return Divide.operate(firstNumber: firstNumber, secondNumber: secondNumber)
        case "%" :
            return Remainder.operate(firstNumber: firstNumber, secondNumber: secondNumber)
        default:
            return 0
        }
        // 정확한 operator가 전달되지 않을 시 0을 리턴(nil을 리턴해도 됨)
    }
}

class AddOperation {
    func operate(firstNumber: Int, secondNumber: Int) -> Double {
        return Double(firstNumber + secondNumber)
    }
}

class SubtractOperation {
    func operate(firstNumber: Int, secondNumber: Int) -> Double {
        return Double(firstNumber - secondNumber)
    }
}

class MultiplyOperation {
    func operate(firstNumber: Int, secondNumber: Int) -> Double {
        return Double(firstNumber * secondNumber)
    }
}

class DivideOperation {
    func operate(firstNumber: Int, secondNumber: Int) -> Double {
        return Double(firstNumber / secondNumber)
    }
}

class RemainderOperation {
    func operate(firstNumber: Int, secondNumber: Int) -> Double {
        return Double(firstNumber % secondNumber)
    }
}


let calculator = Calculator()
let addResult = calculator.calculate(oper: "+", firstNumber: 1, secondNumber: 2)
let subtractResult = calculator.calculate(oper: "-", firstNumber: 9, secondNumber: 2)// 뺄셈 연산
let multiplyResult = calculator.calculate(oper: "*", firstNumber: 6, secondNumber: 2)// 곱셈 연산
let divideResult = calculator.calculate(oper: "/", firstNumber: 8, secondNumber: 2)// 나눗셈 연산
let remainderResult = calculator.calculate(oper: "%", firstNumber: 9, secondNumber: 2)// 나머지 연산


print("addResult : \(addResult)")
print("subtractResult : \(subtractResult)")
print("multiplyResult : \(multiplyResult)")
print("divideResult : \(divideResult)")
print("remainderResult : \(remainderResult)")
