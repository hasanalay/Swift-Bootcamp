import UIKit

class Functions {
    
    func func1(degree:Double) -> Double{
        let degreeInFahrenheit = (degree * 1.8) + 32
        return degreeInFahrenheit
    }
    
    func func2(corner1:Double, corner2:Double){
        print("Perimeter : \(2 * (corner1 + corner2))")
    }
    
    func func3(sayi:Int) -> Int {
        if sayi == 0 {
            return 1
        }else {
            return sayi * func3(sayi: sayi - 1)
        }
    }
    
    func func4(word:String){
        var count = 0
        for letter in word{
            if letter == "a" || letter == "A"{
                count += 1
            }
        }
        print("Number of a letter : \(count)")
    }
    
    func func5(cornerNo:Int) -> Int{
        let result = (cornerNo - 2) * 180
        return result
    }
    
    func func6(numberOfDays:Int) -> Int{
        let hourwage = 10
        var wage = 0
        let maxWorkHours = 160
        let extraWage = 20
        let workedHours = numberOfDays * 8
        if workedHours > 160 {
            let extraHours = workedHours - 160
            wage = (maxWorkHours * hourwage) + (extraHours * extraWage)
        }else {
         wage = workedHours * 10
        }
        return wage
    }
    
    func func7(quota:Int) -> Int{
        var payment = 100
        if quota <= 50 {
            payment
        }else {
            payment += (quota - 50) * 4
        }
        return payment
    }
}
    
let function = Functions()
    
let fahrenheit = function.func1(degree: 36.5)
print("Fahrenheit : \(fahrenheit)")
    
let perimeter: () = function.func2(corner1: 25, corner2: 10)
    
let result = function.func3(sayi: 5)
print("Factorial : \(result)")

let  number: () = function.func4(word: "BAlalAyka")

let sumOfAngles = function.func5(cornerNo: 4)
print("Sum of Inner Angles : \(sumOfAngles)")

let wage = function.func6(numberOfDays: 35)
print("Wage : \(wage)₺")

let payment = function.func7(quota: 51)
print("Payment: \(payment)₺")
                            
