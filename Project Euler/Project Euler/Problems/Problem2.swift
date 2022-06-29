import SwiftUI

struct Problem2: View {
    @State var result:Int = 0
    var body: some View {
        VStack{
            Text("Problem 2")
                .font(.title)
            Text("Each new term in the Fibonacci sequence is generated by adding the previous two terms. By starting with 1 and 2, the first 10 terms will be:\n1, 2, 3, 5, 8, 13, 21, 34, 55, 89,...\nBy considering the terms in the Fibonacci sequence whose values do not exceed four million, find the sum of the even-valued terms.")
                .font(.subheadline)
                .padding()
            Divider()
            Text("The solution is: \(result)").padding(.bottom)
            Button("Calculate the sum of even Fibonacci Terms", action:{
                result = sumOfEvenFibonacciTerms()
                                }
            ).padding(.bottom)
            
        }
    }
    
    func sumOfEvenFibonacciTerms() -> Int{
        var n1 = 1
        var n2 = 2
        var result = 0

        while (n1 <= 4000000) {
            var tempN1: Int
            if (n1 % 2 == 0) {
                result += n1
            }
            tempN1 = n1
            n1 = n2
            n2 += tempN1
        }
        return result
    }
}

struct Problem2_Previews: PreviewProvider {
    static var previews: some View {
        Problem2()
    }
}
