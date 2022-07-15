import SwiftUI

struct Problem9: View {
    @State var result:Int = 0

    var body: some View {
        VStack{
            HStack{
                Text("Problem 9")
                    .font(.title)
                Button {
                    if let url = URL(string: "https://projecteuler.net/problem=9") {
                        UIApplication.shared.open(url)
                    }
                } label: {
                    Image(systemName: "arrowshape.turn.up.right.circle.fill")
                } .help(Text("Tap to view this problem on the website"))
                    .font(.subheadline)
                
            }
            Image("Problem9")
                .resizable()
                .frame(width: 350.0, height: 125)
            Divider()
            Text("The product of the Pythagorean triplet is: \(result)").padding(.bottom)
            Text("⚠️ Attention it migth take a while to calculate the product⚠️ ").foregroundColor(.red).fontWeight(.bold).font(.system(size: 13)).padding(.bottom)
            Button("Find the product of the Pythagorean triplet", action:{
                result = findPythagoreanTriplet()
                }
            ).padding(.bottom)
        }
    }
}
public func findPythagoreanTriplet() -> Int{
    let sumPythagoreanTriplet:Int = 1000
    for a in 1 ... sumPythagoreanTriplet{
        for b in 1 ... sumPythagoreanTriplet{
            for c in 1 ... sumPythagoreanTriplet{
                if(a * a + b * b == c * c && a + b + c == sumPythagoreanTriplet){
                    return a * b * c
                }
            }
        }
    }
    return 0
}


    struct Problem9_Previews: PreviewProvider {
        static var previews: some View {
            Problem9()
        }
    }

