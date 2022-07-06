import SwiftUI

struct Problem8: View {
    @State var result:Int64 = 0

    var body: some View {
        VStack{
            HStack{
                Text("Problem 8")
                    .font(.title)
                Button {
                    if let url = URL(string: "https://projecteuler.net/problem=8") {
                        UIApplication.shared.open(url)
                    }
                } label: {
                    Image(systemName: "arrowshape.turn.up.right.circle.fill")
                } .help(Text("Tap to view this problem on the website"))
                    .font(.subheadline)
                
            }
            Image("Problem 8")
                .resizable()
                .frame(width: 350.0, height: 125)
            Divider()
            Text("The difference is: \(result)").padding(.bottom)
            Button("Calculate the smalles number", action:{
                result = getLargestProduct()
                }
            ).padding(.bottom)
        }
    }
    
    func getLargestProduct() -> Int64{
        var wholeNumber = "73167176531330624919225119674426574742355349194934" +
        "96983520312774506326239578318016984801869478851843" +
        "85861560789112949495459501737958331952853208805511" +
        "12540698747158523863050715693290963295227443043557" +
        "66896648950445244523161731856403098711121722383113" +
        "62229893423380308135336276614282806444486645238749" +
        "30358907296290491560440772390713810515859307960866" +
        "70172427121883998797908792274921901699720888093776" +
        "65727333001053367881220235421809751254540594752243" +
        "5258490771167055601360483958644670632441572215539" +
        "53697817977846174064955149290862569321978468622482" +
        "83972241375657056057490261407972968652414535100474" +
        "82166370484403199890008895243450658541227588666881" +
        "16427171479924442928230863465674813919123162824586" +
        "17866458359124566529476545682848912883142607690042" +
        "24219022671055626321111109370544217506941658960408" +
        "07198403850962455444362981230987879927244284909188" +
        "84580156166097919133875499200524063689912560717606" +
        "05886116467109405077541002256983155200055935729725" +
        "71636269561882670428252483600823257530420752963450"
        
        var tempString = wholeNumber
        var largestProdukt:Int64 = 0
        while tempString.count >= 13 {
            if(getProductFromString(string: String(tempString.prefix(13))) > largestProdukt){
                largestProdukt = getProductFromString(string: String(tempString.prefix(13)))
                
                
            }
        }
        
        
        return Int64(largestProdukt)
    }
    func getProductFromString(string:String) -> Int64{
        return Int64(0)
    }
}

struct Problem8_Previews: PreviewProvider {
    static var previews: some View {
        Problem8()
    }
}
