//
//  PostModel.swift
//  HackerNews
//
//  Created by Cinta Jose on 08/08/24.
//

import Foundation

struct Result: Decodable {
    var hits: [Hit]?
}

// MARK: - Hit
struct Hit: Decodable {
//    var highlightResult: HighlightResult?
    var tags: [String]?
    var author: String?
    var children: [Int]?
    var createdAt: Date?
    var createdAtI, numComments: Int?
    var objectID: String?
    var points, storyID: Int?
    var title: String?
    var updatedAt: Date?
    var url: String?
}
