//
//  ChampSelectView.swift
//  lolChampPicker
//
//  Created by Andrew Santoso on 11/11/26.
//

import SwiftUI

// TODO: Remove
class MockData {
    static let mockEnemySlotsView: [String] = ["Lee Sin", "Leona", "Kennen", "", ""]
    static let mockRecommendations: [Recommendation] = [
        Recommendation(id: "Ahri", name: "Ahri", score: 3,
                       reasons: ["Counters Zed", "Good vs Lee Sin"]),
        Recommendation(id: "Orianna", name: "Orianna", score: 1,
                       reasons: ["Safe vs Kennen"]),
        Recommendation(id: "Syndra", name: "Syndra", score: -1,
                       reasons: ["Hard to play vs Leona"])
    ]
}

struct ChampSelectView: View {
    
    @State var selection: Role = .mid
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 14) {
                RoleBar(selection: $selection)
                EnemySlotsView(slots: MockData.mockEnemySlotsView)
                RecommendationsView(recommendations: MockData.mockRecommendations)
                
                // TODO: Remove
                Spacer()
            }
            .padding(.horizontal)
            .navigationTitle("Champ Select")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Button {
                        // TODO: Slide Out Later
                    } label: {
                        Image(systemName: "line.3.horizontal")
                    }
                }
                
                ToolbarItem(placement: .topBarTrailing) {
                    Button("New Game") {
                        // TODO: Finish later
                    }
                }
            }
        }
    }
}
