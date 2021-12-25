//
//  Estimate.swift
//  OneTapEstimates WatchKit Extension
//
//  Created by Neetesh Gupta on 20/12/2021.
//

import Foundation

public struct Estimate: Identifiable {
    
    public var type: EstimateType
    public var values: [String]

    public var id: Int {
        type.hashValue
    }

    public var title: String {
        type.rawValue
    }

    public init(type: EstimateType, values: [String]) {
        self.type = type
        self.values = values
    }

}

//MARK: Utility
extension Estimate {
    public var summary: String {
        values.joined(separator: ", ")
    }

    public var cardCount: Int {
        values.count
    }
}
