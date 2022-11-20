//
//  Quote.swift
//  Daily Quote
//
//  Created by Brady Chin on 11/13/22.
//

import Foundation
import SwiftUI

struct Quote: Codable, Identifiable, Hashable {
    var id: Int
    var readDate: Date?
    var quote: String
    var author: String
    var isFavorited: Bool
    
    var displayAuthor: String {
        "- \(author)"
    }
    var formattedDate: String {
        readDate?.formatted(date: .numeric, time: .omitted) ?? "N/A"
    }
    var dayDate: String {
        readDate?.formatted(.dateTime.day()) ?? "N/A"
    }
}
