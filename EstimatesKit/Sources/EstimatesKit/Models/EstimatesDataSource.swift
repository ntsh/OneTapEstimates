//
//  EstimatesDataSource.swift
//  OneTapEstimates WatchKit Extension
//
//  Created by Neetesh Gupta on 20/12/2021.
//

import Foundation

public class EstimatesDataSource {

    public init() {}

    public var estimates: [Estimate] = [
        Estimate(type: .tShirtSize, values: ["XS", "S", "M", "L", "XL", "XXL"]),
        Estimate(type: .fibonacci, values: ["1", "2", "3", "5", "8", "13"]),
        Estimate(type: .powersOfTwo, values: ["1", "2", "4", "8", "16", "32"])
    ]

    public var title = "One Tap Estimates"
}
