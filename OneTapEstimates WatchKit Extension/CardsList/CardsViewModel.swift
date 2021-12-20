//
//  CardsViewModel.swift
//  OneTapEstimates WatchKit Extension
//
//  Created by Neetesh Gupta on 20/12/2021.
//

import Foundation

class CardsViewModel: ObservableObject {

    var cards: [String]

    init(cards: [String] =  ["XS", "S", "M", "L", "XL", "XXL"]) {
        self.cards = cards
    }

    var count: Int {
        cards.count
    }

}
