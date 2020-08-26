import XCTest
@testable import APIServiceOZ

final class APIServiceOZTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(APIServiceOZ().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
