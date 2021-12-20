//
//  CardsViewModel.swift
//  OneTapEstimates WatchKit Extension
//
//  Created by Neetesh Gupta on 20/12/2021.
//

import Foundation

class CardsViewModel: ObservableObject {

    private var estimate: Estimate

    var title: String {
        estimate.title
    }

    var cards: [String] {
        estimate.values
    }

    var count: Int {
        cards.count
    }

    init(estimate: Estimate) {
        self.estimate = estimate
    }
}
