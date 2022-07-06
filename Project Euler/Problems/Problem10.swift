import SwiftUI

struct Problem10: View {
    @State var result:Int = 0
    
    var body: some View {
        VStack{
            HStack{
                Text("Problem 10")
                    .font(.title)
                Button {
                    if let url = URL(string: "https://projecteuler.net/problem=10") {
                        UIApplication.shared.open(url)
                    }
                } label: {
                    Image(systemName: "arrowshape.turn.up.right.circle.fill")
                } .help(Text("Tap to view this problem on the website"))
                    .font(.subheadline)
                
            }
            Text("The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.\nFind the sum of all the primes below two million.")
                .font(.subheadline)
                .padding()
            Divider()
            Text("The sum is: \(result)")
                .padding(.bottom)
            Text("⚠️ Attention it migth take a while to calculate the sum⚠️ ").foregroundColor(.red).fontWeight(.bold).font(.system(size: 13)).padding(.bottom)
            Button("Calculate the sum", action:{
                result = calculateSumOfPrimes()}
            ).padding(.bottom)
        }
    }
}


func calculateSumOfPrimes() -> Int{
    var sum = 0
    for i in 1...2_000_000{
        if(Util.isPrim(numberToCheck: i)){
            sum += i
        }
    }
    return sum
}

struct Problem10_Previews: PreviewProvider {
    static var previews: some View {
        Problem1()
    }
}
