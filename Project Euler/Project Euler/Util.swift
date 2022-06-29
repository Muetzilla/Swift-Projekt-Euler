import Foundation

class Util:ObservableObject{
    static func isPalidrome(number:Int) -> Bool{
        var tempRest = number
        var buildedNumber = 0
        var remainer  = 0
        
        while tempRest != 0{
            remainer = tempRest % 10
            buildedNumber = buildedNumber * 10 + remainer
            tempRest /= 10
            
        }

        return buildedNumber == number
    }
    
    static func isPrim(numberToCheck: Int) ->Bool{
        if(numberToCheck <= 1){
            return false
        }
        if(numberToCheck == 2){
            return true
        }
        if(numberToCheck % 2 == 0){
            return false
        }
        let sqrtRoot = Double(numberToCheck).squareRoot()
        var isPrime = true
        
        var counter: Double = 3
        while(counter <= sqrtRoot){
            if(Double(numberToCheck).truncatingRemainder(dividingBy: counter) == Double(0)){
                isPrime = false
                break
            }
            counter += 2
        }
            return isPrime
    }
}
