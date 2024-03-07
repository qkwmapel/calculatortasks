import UIKit

class Calculator {
    
    func calculate(oper: String, firstNumber: Int, secondNumber: Int ) -> Double {
        switch oper {
        case "+" :
            return Double(firstNumber + secondNumber)
        case "-" :
            return Double(firstNumber - secondNumber)
        case "*" :
            return Double(firstNumber * secondNumber)
        case "/" :
            return Double(firstNumber / secondNumber)
        case "%" :
            return Double(firstNumber % secondNumber)
        default:
            return 0
        }
        // 정확한 operator가 전달되지 않을 시 0을 리턴(nil을 리턴해도 됨)
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
