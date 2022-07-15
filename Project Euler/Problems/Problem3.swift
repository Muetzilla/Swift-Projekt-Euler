import SwiftUI

struct Problem3: View {
    @State var result:Int = 0
    var body: some View {
        VStack{
            HStack{
                Text("Problem 3")
                    .font(.title)
                Button {
                    if let url = URL(string: "https://projecteuler.net/problem=3") {
                        UIApplication.shared.open(url)
                    }
                } label: {
                    Image(systemName: "arrowshape.turn.up.right.circle.fill")
                } .help(Text("Tap to view this problem on the website"))
                    .font(.subheadline)
                
            }
            Text("The prime factors of 13195 are 5, 7, 13 and 29.\nWhat is the largest prime factor of the number 600851475143 ?")
                .font(.subheadline)
                .padding()
            Divider()
            Text("The solution is: \(result)").padding(.bottom)
            Button("Calculate the largest prime factor", action:{
                result = getLargesPrimeFactor()
                            }
            ).padding(.bottom)
            
        }
    }
}
public func getLargesPrimeFactor() -> Int{
    var originalNumber = 600851475143
    var primeFactors:[Int] = []
    var tempPrimeFactor = 2
    
    while(originalNumber > 1){
        while (originalNumber % tempPrimeFactor == 0) {
            primeFactors.append(tempPrimeFactor)
            originalNumber /= tempPrimeFactor
            
        }
        tempPrimeFactor += 1
    }
    
    
    return primeFactors.max() ?? 0
}

struct Problem3_Previews: PreviewProvider {
    static var previews: some View {
        Problem3()
    }
}
