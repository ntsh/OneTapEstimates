//
//  CardsListView.swift
//  OneTapEstimates WatchKit Extension
//
//  Created by Neetesh Gupta on 20/12/2021.
//

import SwiftUI

struct CardsListView: View {

    @ObservedObject var viewModel: CardsViewModel

    var body: some View {
        ScrollView {
            LazyVGrid(columns: Array(repeating: .init(.flexible()), count: 2)) {
                ForEach(viewModel.cards, id: \.self)  { card in
                    NavigationLink(destination: CardView(card: card)) {
                        Text("\(card)")
                            .font(.system(.body, design: .rounded))
                            .padding()
                    }
                }
            }
        }.navigationTitle(viewModel.title)
    }
}

struct CardsListView_Previews: PreviewProvider {

    private static var estimate = Estimate(type: .tShirtSize, values: ["XS", "S", "M", "L", "XL", "XXL"])

    static var previews: some View {
        CardsListView(viewModel: CardsViewModel(estimate: estimate))
    }
}
