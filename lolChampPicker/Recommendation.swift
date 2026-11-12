//
//  Recommendation.swift
//  lolChampPicker
//
//  Created by Andrew Santoso on 11/12/26.
//

import Foundation

struct Recommendation: Identifiable {
    let id: String
    let name: String
    let score: Int
    let reasons: [String]
}
