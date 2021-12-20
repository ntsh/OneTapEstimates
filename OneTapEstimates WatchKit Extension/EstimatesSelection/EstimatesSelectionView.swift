//
//  EstimatesSelectionView.swift
//  OneTapEstimates WatchKit Extension
//
//  Created by Neetesh Gupta on 20/12/2021.
//

import SwiftUI

struct EstimatesSelectionView: View {
    @StateObject var viewModel: EstimatesViewModel = EstimatesViewModel()

    var body: some View {
        List(viewModel.estimates) { estimate in
            NavigationLink(destination: CardsListView(viewModel: CardsViewModel(estimate: estimate))) {
                VStack(alignment: .leading) {
                    Text(estimate.title)
                        .font(.headline)
                    Text(estimate.summary)
                        .font(.footnote)
                }
            }
        }.navigationTitle(viewModel.title)
    }
}

struct EstimatesSelectionView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            EstimatesSelectionView()
            EstimatesSelectionView()
                .preferredColorScheme(.light)
        }
    }
}
