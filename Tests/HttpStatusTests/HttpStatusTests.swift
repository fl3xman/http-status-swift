import XCTest
@testable import HttpStatus

class HttpStatusTests: XCTestCase {
    func testStatus() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(Status(rawValue: 200), Status(code: .ok))
    }


    static var allTests = [
        ("testExample", testStatus),
    ]
}
