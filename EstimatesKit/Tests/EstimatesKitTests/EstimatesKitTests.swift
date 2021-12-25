import XCTest
@testable import EstimatesKit

final class EstimatesKitTests: XCTestCase {

    private var estimate: Estimate!

    override func setUpWithError() throws {
        estimate = Estimate(type: .tShirtSize, values: ["S", "M", "XS"])
    }

    func testSummary() throws {
        XCTAssertEqual(estimate.summary, "S, M, XS")
    }

    func testCount() throws {
        XCTAssertEqual(estimate.cardCount, 3)
    }

    func testTitle() throws {
        XCTAssertEqual(estimate.title, "T-shirt Sizes")
    }
}
