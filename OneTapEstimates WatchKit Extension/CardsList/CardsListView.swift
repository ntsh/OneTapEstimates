//
//  CardsListView.swift
//  OneTapEstimates WatchKit Extension
//
//  Created by Neetesh Gupta on 20/12/2021.
//

import SwiftUI

struct CardsListView: View {

    @ObservedObject var viewModel: CardsViewModel = CardsViewModel()

    var body: some View {
        ScrollView {
            LazyVGrid(columns: [GridItem(), GridItem()]) {
                ForEach(viewModel.cards, id: \.self)  { card in
                    NavigationLink(destination: CardView(card: card)) {
                        Text("\(card)")
                            .font(.system(.body, design: .rounded))
                            .padding()
                    }
                }
            }
        }.navigationTitle("T-shirt sizes")
    }
}

struct CardsListView_Previews: PreviewProvider {
    static var previews: some View {
        CardsListView()
    }
}
