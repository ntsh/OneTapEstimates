//
//  CardsListView.swift
//  OneTapEstimates WatchKit Extension
//
//  Created by Neetesh Gupta on 20/12/2021.
//

import SwiftUI
import EstimatesKit

struct CardsListView: View {

    @State var estimate: Estimate
    @Environment(\.dynamicTypeSize) var typeSize: DynamicTypeSize

    var body: some View {
        ScrollView {
            LazyVGrid(columns: Array(repeating: .init(.flexible()), count: typeSize > .xxxLarge ? 1 : 2)) {
                ForEach(estimate.values, id: \.self)  { card in
                    NavigationLink(destination: CardView(card: card)) {
                        Text("\(card)")
                            .font(.system(.body, design: .rounded))
                            .padding()
                    }
                }
            }
        }.navigationTitle(estimate.title)
    }
}

struct CardsListView_Previews: PreviewProvider {

    private static var estimate = Estimate(type: .tShirtSize, values: ["XS", "S", "M", "L", "XL", "XXL"])

    static var previews: some View {
        CardsListView(estimate: estimate)
        CardsListView(estimate: estimate)
            .environment(\.dynamicTypeSize, .accessibility5)
    }
}
