import XCTest
@testable import Project_Euler

/** 
 This class tests if all the functions used for the different Problems return the expected values.
 */
class Project_EulerTests: XCTestCase {
  
    func testProblem1ForResult(){
        XCTAssertEqual(calculateSumOfProdukts(), 233168)
    }
    
    func testProblem2ForResult(){
        XCTAssertEqual(sumOfEvenFibonacciTerms(), 4613732)
    }
    
    func testProblem3ForResult(){
        XCTAssertEqual(getLargesPrimeFactor(), 6857)
    }
    
    func testProblem4ForResult(){
        XCTAssertEqual(getPalidrome(), 906609)
    }
    
    func testProblem5ForResult(){
        XCTAssertEqual(getSmallestNumber(), 232792560)
    }
    
    func testProblem6ForResult(){
        XCTAssertEqual(getDifference(), 25164150)
    }
    
    func testProblem7ForResult(){
        XCTAssertEqual(getSpecificPrime(), 104743)
    }
    
    func testProblem8ForResult(){
        XCTAssertEqual(getLargestProduct(), 23514624000)
    }
    
    func testProblem9ForResult(){
        XCTAssertEqual(findPythagoreanTriplet(), 31875000)
    }
    
    func testProblem10ForResult(){
        XCTAssertEqual(calculateSumOfPrimes(), 142913828922)
    }
}
