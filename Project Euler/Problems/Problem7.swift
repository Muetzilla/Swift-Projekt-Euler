import SwiftUI

struct Problem7: View {
    @State var result:Int = 0

    var body: some View {
        VStack{
            Text("Problem 7")
                .font(.title)
            Text("By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.\nWhat is the 10 001st prime number?")
                .font(.subheadline)
                .padding()
            Divider()
            Text("The 10001st prime is: \(result)").padding(.bottom)
            Button("Calculate the 1001st prime", action:{
                result = getSpecificPrime()
                }
            ).padding(.bottom)
        }
    }
    
    func getSpecificPrime() -> Int{
        var currentPrime:Int = 1
        var primeIndex:Int = 0
        while true{
            if(Util.isPrim(numberToCheck: currentPrime)){
                primeIndex += 1
                if(primeIndex == 10_001){
                    break
                }
            }
            currentPrime += 1
        }
        return currentPrime
    }
}

struct Problem7_Previews: PreviewProvider {
    static var previews: some View {
        Problem7()
    }
}
