//
//  Estimate.swift
//  OneTapEstimates WatchKit Extension
//
//  Created by Neetesh Gupta on 20/12/2021.
//

import Foundation

struct Estimate: Identifiable {
    var type: EstimateType
    var values: [String]

    var id: Int {
        type.hashValue
    }

    var title: String {
        type.rawValue
    }
}

//MARK: Utility
extension Estimate {
    var summary: String {
        values.joined(separator: ", ")
    }

    var cardCount: Int {
        values.count
    }
}
