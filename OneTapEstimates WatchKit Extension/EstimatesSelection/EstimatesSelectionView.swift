//
//  EstimatesSelectionView.swift
//  OneTapEstimates WatchKit Extension
//
//  Created by Neetesh Gupta on 20/12/2021.
//

import SwiftUI

struct EstimatesSelectionView: View {
    @State var dataSource: EstimatesDataSource = EstimatesDataSource()

    var body: some View {
        List(dataSource.estimates) { estimate in
            NavigationLink(destination: CardsListView(estimate: estimate)) {
                VStack(alignment: .leading) {
                    Text(estimate.title)
                        .font(.headline)
                    Text(estimate.summary)
                        .font(.footnote)
                }
            }
        }.navigationTitle(dataSource.title)
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
