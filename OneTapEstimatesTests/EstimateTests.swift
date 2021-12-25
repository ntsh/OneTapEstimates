//
//  EstimateTests.swift
//  OneTapEstimatesTests
//
//  Created by Neetesh Gupta on 25/12/2021.
//

import XCTest
@testable import OneTapEstimates_WatchKit_Extension

class EstimateTests: XCTestCase {

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
