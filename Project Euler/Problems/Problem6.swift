import SwiftUI

struct Problem6: View {
    @State var result:Int64 = 0

    var body: some View {
        VStack{
            HStack{
                Text("Problem 6")
                    .font(.title)
                Button {
                    if let url = URL(string: "https://projecteuler.net/problem=6") {
                        UIApplication.shared.open(url)
                    }
                } label: {
                    Image(systemName: "arrowshape.turn.up.right.circle.fill")
                } .help(Text("Tap to view this problem on the website"))
                    .font(.subheadline)
                
            }
            Image("Projekt Euler Problem 6 Description")
                .resizable()
                .frame(width: 350.0, height: 125)
            Divider()
            Text("The difference is: \(result)").padding(.bottom)
            Button("Calculate the smalles number", action:{
                result = getDifference()
                }
            ).padding(.bottom)
        }
    }
}
public  func getDifference() -> Int64{
    var sum:Int64 = 0
    var sumOfSquares:Int64 = 0
    for i in 1...100{
        sum += Int64(i)
        sumOfSquares += Int64(i * i)
    }
    return Int64(sum * sum - sumOfSquares)
}

struct Problem6_Previews: PreviewProvider {
    static var previews: some View {
        Problem6()
    }
}
