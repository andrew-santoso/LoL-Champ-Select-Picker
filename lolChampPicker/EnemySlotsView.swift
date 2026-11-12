//
//  EnemySlotsView.swift
//  lolChampPicker
//
//  Created by Andrew Santoso on 11/11/26.
//

import SwiftUI

struct EnemySlotsView: View {
    
    var slots: [String?]
    
    var body: some View {
        HStack(spacing: 14) {
            ForEach(slots.indices, id: \.self) { index in
                SlotView(
                    name: slots[index],
                    isCurrent: index == slots.firstIndex(of: nil)) {
                    // TODO: Move selected to the next one
                }
            }
        }
    }
}


