import UIKit

class Calculator {
    var operation : AbstractOperation
    init(operation : AbstractOperation){
        self.operation = operation
    }
    
    func calculate(firstNumber: Int, secondNumber: Int ) -> Double {
        self.operation.calculate(firstNum: firstNumber, secondNum: secondNumber)
        // 정확한 operator가 전달되지 않을 시 0을 리턴(nil을 리턴해도 됨)
    }
}
// 프로토콜을 배우지 않아 클래스의 상속으로 처리
class AbstractOperation {
    // 연산을 수행하는 함수 작성
    func calculate(firstNum: Int, secondNum: Int) -> Double{
        return 0
    }
    
}

class AddOperation : AbstractOperation{
    override func calculate(firstNum: Int, secondNum: Int) -> Double{
        return Double(firstNum + secondNum)
    }
}

class SubtractOperation : AbstractOperation{
    override func calculate(firstNum: Int, secondNum: Int) -> Double{
        return Double(firstNum - secondNum)
    }
}

class MultiplyOperation : AbstractOperation{
    override func calculate(firstNum: Int, secondNum: Int) -> Double{
        return Double(firstNum * secondNum)
    }
}

class DivideOperation : AbstractOperation{
    override func calculate(firstNum: Int, secondNum: Int) -> Double{
        return Double(firstNum / secondNum)
    }
}

class RemainderOperation : AbstractOperation{
    override func calculate(firstNum: Int, secondNum: Int) -> Double{
        return Double(firstNum % secondNum)
    }
}

class powAndSqrt : AbstractOperation {
    override func calculate(firstNum: Int, secondNum: Int) -> Double {
        if secondNum >= 1 {
            return pow(Double(firstNum), Double(secondNum))
        }else if secondNum == 0{
            return sqrt(Double(firstNum))
        }else {
            return 0
        }
    }
}

let calculator = Calculator(operation: AddOperation())
let addResult = calculator.calculate(firstNumber: 4, secondNumber: 2)
calculator.operation = SubtractOperation()
let subtractResult = calculator.calculate(firstNumber: 5, secondNumber: 3)// 뺄셈 연산
calculator.operation = MultiplyOperation()
let multiplyResult = calculator.calculate(firstNumber: 2, secondNumber: 3)// 곱셈 연산
calculator.operation = DivideOperation()
let divideResult = calculator.calculate(firstNumber: 8, secondNumber: 2)// 나눗셈 연산
calculator.operation = RemainderOperation()
let remainderResult = calculator.calculate(firstNumber: 10, secondNumber: 3)// 나머지 연산
calculator.operation = powAndSqrt()
let powResult = calculator.calculate(firstNumber: 4, secondNumber: 2)
let SqrtResult = calculator.calculate(firstNumber: 9, secondNumber: 1)


print("addResult : \(addResult)")
print("subtractResult : \(subtractResult)")
print("multiplyResult : \(multiplyResult)")
print("divideResult : \(divideResult)")
print("remainderResult : \(remainderResult)")
print("powResult : \(powResult)")
print("SqrtResult : \(SqrtResult)")
