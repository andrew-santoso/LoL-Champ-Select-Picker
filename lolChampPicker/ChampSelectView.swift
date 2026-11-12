//
//  ChampSelectView.swift
//  lolChampPicker
//
//  Created by Andrew Santoso on 11/11/26.
//

import SwiftUI

struct ChampSelectView: View {
    
    @State var selection: Role = .mid
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 14) {
                RoleBar(selection: $selection)
                EnemySlotsView(slots: ["Lee Sin", "Leona", "Kennen", "", ""])
                
                // TODO: Remove
                Spacer()
            }
        }
    }
}
