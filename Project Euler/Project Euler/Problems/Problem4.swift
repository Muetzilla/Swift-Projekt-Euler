import SwiftUI

struct Problem4: View {
    @State var result:Int = 0
   
    
    var body: some View {
        VStack{
            Text("Problem 4")
                .font(.title)
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
