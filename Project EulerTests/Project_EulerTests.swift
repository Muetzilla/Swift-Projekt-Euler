import XCTest
@testable import Project_Euler

class Project_EulerTests: XCTestCase {

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
    func testParseIntFromStringPass(){
        XCTAssertEqual(Util.getProductFromString(string: "125"), 10)
    }
    func testParseIntFromStringWithCharater(){
        XCTAssertEqual(Util.getProductFromString(string: "1234 Hello World"), 1)
    }
    func testParseIntFromStringIgnoreLeadingZeros(){
        XCTAssertEqual(Util.getProductFromString(string: "0000125"), 10)
    }
}
