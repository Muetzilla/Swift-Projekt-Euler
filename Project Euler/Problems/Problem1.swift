import SwiftUI

struct Problem1: View {
    @State var result:Int = 0
    
    var body: some View {
        VStack{
            HStack{
                Text("Problem 1")
                    .font(.title)
                Button {
                    if let url = URL(string: "https://projecteuler.net/problem=1") {
                        UIApplication.shared.open(url)
                    }
                } label: {
                    Image(systemName: "arrowshape.turn.up.right.circle.fill")
                } .help(Text("Tap to view this problem on the website"))
                    .font(.subheadline)
                
            }
            Text("If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23 Find the sum of all the multiples of 3 or 5 below 1000.")
                .font(.subheadline)
                .padding()
            Divider()
            Text("The sum is: \(result)")
                .padding(.bottom)
            
            Button("Calculate the sum", action:{
                result = calculateSumOfProdukts()}
            ).padding(.bottom)
        }
    }
}


public func calculateSumOfProdukts() -> Int{
    var sum = 0
    for i in 1...999{
        if(i % 3 == 0 || i % 5 == 0){
            sum += i
        }
    }
    return sum
}

struct Problem1_Previews: PreviewProvider {
    static var previews: some View {
        Problem1()
    }
}
