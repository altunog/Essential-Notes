//
//  RemoteFeedItem.swift
//  EssentialFeed
//
//  Created by Oğuz Kaan Altun on 18.11.2023.
//

import Foundation

internal struct RemoteFeedItem: Decodable {
    internal let id: UUID
    internal let description: String?
    internal let location: String?
    internal let image: URL
}
