import XCTest
@testable import Counter

struct exampleStruct: Identifiable, CustomStringConvertible{
	var id: Int
	var text: String
	var description: String {
		"\(id) : \(text)"
	}
}

final class CounterTests: XCTestCase {
    func testStatic() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.

		XCTAssertEqual(Counter.next, 5)
		XCTAssertEqual(Counter.next, 6)
		XCTAssertEqual(Counter.next, 7)
		XCTAssertEqual(Counter.next, 8)

    }

	func testInstance() throws{
		var counter = Counter()
		XCTAssertEqual(exampleStruct(id: counter.next(), text: "cat").id, 1)
		XCTAssertEqual(exampleStruct(id: counter.next(), text: "cat").id, 2)
		XCTAssertEqual(exampleStruct(id: counter.next(), text: "cat").id, 3)
		XCTAssertEqual(exampleStruct(id: counter.next(), text: "cat").id, 4)
	}
	func testMixed() throws {
		var counter = Counter()
		XCTAssertEqual(Counter.next, 1)
		XCTAssertEqual(exampleStruct(id: counter.next(), text: "cat").id, 1)

		XCTAssertEqual(Counter.next, 2)
		XCTAssertEqual(exampleStruct(id: counter.next(), text: "cat").id, 2)

		XCTAssertEqual(Counter.next, 3)
		XCTAssertEqual(exampleStruct(id: counter.next(), text: "cat").id, 3)

		XCTAssertEqual(Counter.next, 4)
		XCTAssertEqual(exampleStruct(id: counter.next(), text: "cat").id, 4)
	}

}
