//
//  SlotView.swift
//  lolChampPicker
//
//  Created by Andrew Santoso on 11/11/26.
//

import SwiftUI

struct SlotView: View {
    
    let name: String?
    let isCurrent: Bool
    let action: () -> Void
    
    @ScaledMetric var size: CGFloat = 46
        
    var body: some View {
        Button(action: action) {
            VStack(spacing: 4) {
                circle
                Text(name ?? "")
                    .font(.caption)
                    .foregroundStyle(.secondary)
                    .lineLimit(1)
            }
            .frame(maxWidth: .infinity)
        }
        .buttonStyle(.plain)
    }
    
    @ViewBuilder
    private var ring: some View {
        if name != nil {
            Circle().strokeBorder(Color.accentColor.opacity(0.4), lineWidth: 0.5)
        } else if isCurrent {
            Circle().strokeBorder(Color.accentColor, lineWidth: 2)
        } else {
            Circle().strokeBorder(Color.secondary, style: StrokeStyle(lineWidth: 1, dash: [4]))
        }
    }
    
    private var circle: some View {
        Circle()
            .fill(name == "" ? Color.clear : Color.accentColor.opacity(0.15))
            .frame(width: size, height: size)
            .overlay { ring }
            .overlay {
                Text(initials)
                    .font(.footnote.weight(.medium))
                    .foregroundStyle(Color.accentColor)
            }
    }
    
    // TODO: Move into Champion struct
    private var initials: String {
        guard let name else { return "" }
        return name.split(separator: " ")       // ["Lee", "Sin"]
            .compactMap(\.first)                // ["L", "S"]
            .prefix(2)
            .map(String.init)
            .joined()
            .uppercased()
    }
}
