//
//  RecommendationsView.swift
//  lolChampPicker
//
//  Created by Andrew Santoso on 11/12/26.
//

import SwiftUI

struct RecommendationsView: View {
    
    let recommendations: [Recommendation]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text("Recommended Champs")
            ForEach(recommendations) { recommendation in
                RecommendationRow(recommendation: recommendation)
            }
        }
        .padding()
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(.quaternary, in: .rect(cornerRadius: 12))
    }
}

#Preview("Filled Recommendations View") {
    RecommendationsView(recommendations: MockData.mockRecommendations)
}
