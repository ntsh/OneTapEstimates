//
//  CardView.swift
//  OneTapEstimates WatchKit Extension
//
//  Created by Neetesh Gupta on 20/12/2021.
//

import SwiftUI

struct CardView: View {

    private var card: String

    init(card: String = "M") {
        self.card = card
    }

    var body: some View {
        Text("\(card)")
            .padding()
            .font(.largeTitle)
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
    }
}
