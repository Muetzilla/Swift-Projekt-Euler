import SwiftUI

struct Problem5: View {
    @State var result:Int = 0

    var body: some View {
        VStack{
            HStack{
                Text("Problem 5")
                    .font(.title)
                Button {
                    if let url = URL(string: "https://projecteuler.net/problem=5") {
                        UIApplication.shared.open(url)
                    }
                } label: {
                    Image(systemName: "arrowshape.turn.up.right.circle.fill")
                } .help(Text("Tap to view this problem on the website"))
                    .font(.subheadline)
                
            }
            Text("2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.What is the smallest positive number that is evenly dividible by all of the numbers farom 1 to 20?")
                .font(.subheadline)
                .padding()
            Divider()
            Text("The smallest number is: \(result)").padding(.bottom)
            Text("⚠️ Attention it migth take a while to calculate the number⚠️ ").foregroundColor(.red).fontWeight(.bold).font(.system(size: 13)).padding(.bottom)
            Button("Calculate the smalles number", action:{
                result = getSmallestNumber()}).padding(.bottom)
        }
    }
}

public func getSmallestNumber() -> Int{
    var smallestNumber = 0
    var currentNumber = 1
    while(true){
        var evenlyDividible = true
        for i in stride(from: 20, to: 1, by: -1){
            if(currentNumber % i != 0){
                evenlyDividible = false
                break
            }
        }
        
        if(evenlyDividible){
            smallestNumber = currentNumber
            break
        }
        currentNumber += 1
    }
    return smallestNumber
}

struct Problem5_Previews: PreviewProvider {
    static var previews: some View {
        Problem5()
    }
}
