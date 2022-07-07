import SwiftUI

struct ProblemOverview: View {
    var problems = [
       Problem(name: "Problem 1", description: "Get multiples of certain numbers", detailView: AnyView(Problem1())),
       Problem(name: "Problem 2", description: "Find numbers in the Fibonacci sequence",
            detailView: AnyView(Problem2())),
       Problem(name: "Problem 3", description: "Get prime factors from a number", detailView: AnyView(Problem3())),
       Problem(name: "Problem 4", description: "Check the largest Palidrome in a given area", detailView: AnyView(Problem4())),
       Problem(name: "Problem 5", description: "Find smalles number that is dividable by certain numbers", detailView: AnyView(Problem5())),
       Problem(name: "Problem 6", description: "Calculate difference between sum and square", detailView: AnyView(Problem6())),
       Problem(name: "Problem 7", description: "Find a specific prime number", detailView: AnyView(Problem7())),
       Problem(name: "Problem 8", description: "Find the largest sum in a grid", detailView: AnyView(Problem8())),
       Problem(name: "Problem 9", description: "Find a special Pythagorean triplet", detailView: AnyView(Problem9())),
       Problem(name: "Problem 10", description: "Calculate the sum of primes", detailView: AnyView(Problem10()))
    ]
    var body: some View {
        VStack{
            Image("Project Euler Logo")
                .resizable()
                .frame(width: 300, height: 50).padding()
            NavigationView{
                List(problems) { problem in
                    NavigationLink(destination: problem.detailView) {
                        Row(name: problem.name, description: problem.description)
                    }
                }
                .listStyle(.plain)
                .navigationBarTitle("Problems")
            }
        }
    }
}

struct Problem: Hashable, Identifiable {
    static func == (lhs: Problem, rhs: Problem) -> Bool {
        return lhs.name == rhs.name
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(name)
    }
    
    var name: String
    
    var description: String
    var detailView: AnyView
    var id = UUID()
    init(name: String, description: String, detailView: AnyView) {
        self.name = name
        self.description = description
        self.detailView = detailView
    }
}

struct Row: View {
    var name: String
    var description: String
    
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text(name)
                Text(description).font(.subheadline).foregroundColor(.gray)
            }
            Spacer()
        }
    }
}

struct ProblemOverview_Previews: PreviewProvider {
    static var previews: some View {
        ProblemOverview()
    }
}
