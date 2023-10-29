//
//  FeedItem.swift
//  EssentialFeed
//
//  Created by Oğuz Kaan Altun on 14.10.2023.
//

import Foundation

public struct FeedItem: Equatable {
    let id: UUID
    let description: String?
    let location: String?
    let imageURL: URL
}
