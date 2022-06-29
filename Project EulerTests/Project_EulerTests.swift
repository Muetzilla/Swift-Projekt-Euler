import XCTest
@testable import Project_Euler

class Project_EulerTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testIsPrimeFails(){
        XCTAssertFalse(Util.isPrim(numberToCheck:4))
    }
    func testIsPrimePass(){
        XCTAssertTrue(Util.isPrim(numberToCheck:5))
    }
    func testIsPrimeLarge(){
        XCTAssertFalse(Util.isPrim(numberToCheck:1872729))
    }
    func testIsPalidromeFails(){
        XCTAssertFalse(Util.isPalidrome(number: 12))
    }
    func testIsPalidromePass(){
        XCTAssertTrue(Util.isPalidrome(number: 1221))
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        // Any test you write for XCTest can be annotated as throws and async.
        // Mark your test throws to produce an unexpected failure when your test encounters an uncaught error.
        // Mark your test async to allow awaiting for asynchronous code to complete. Check the results with assertions afterwards.
    }

    
    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
