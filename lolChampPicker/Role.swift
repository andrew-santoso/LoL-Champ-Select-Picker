//
//  Role.swift
//  lolChampPicker
//
//  Created by Andrew Santoso on 11/11/26.
//

import Foundation

enum Role: String, CaseIterable {
    case top, jng, mid, bot, sup
    
    var shortName: String {
        switch self {
        case .top: return "Top"
        case .jng: return "Jng"
        case .mid: return "Mid"
        case .bot: return "Bot"
        case .sup: return "Sup"
        }
    }
}
