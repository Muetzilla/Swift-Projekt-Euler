import SwiftUI
import SwiftLibrary

struct Problem4: View {
    @State var result:Int = 0
   
    
    var body: some View {
        VStack{
            HStack{
                Text("Problem 4")
                    .font(.title)
                Button {
                    if let url = URL(string: "https://projecteuler.net/problem=4") {
                        UIApplication.shared.open(url)
                    }
                } label: {
                    Image(systemName: "arrowshape.turn.up.right.circle.fill")
                } .help(Text("Tap to view this problem on the website"))
                    .font(.subheadline)
                
            }
            Text("A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.\nFind the largest palindrome made from the product of two 3-digit numbers.")
                .font(.subheadline)
                .padding()
            Divider()
            Text("The largest palidrome from 3 digits is: \(result)")
                .padding(.bottom)
            
            Button("Calculate the largest palidrome from 3 digits", action:{
                result = getPalidrome()}
            ).padding(.bottom)
        }
    }
    
    func getPalidrome() -> Int{
        var palidromes: [Int] = []
        for i in 100...999{
            for j in 100...999{
                if(Util.isPalidrome(number: i * j)){
                    palidromes.append(i * j)
                }
            }
        }
        return palidromes.max() ?? 0
    }
}


struct Problem4_Previews: PreviewProvider {
    static var previews: some View {
        Problem4()
    }
}
