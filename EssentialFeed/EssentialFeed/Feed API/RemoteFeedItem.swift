//
//  RemoteFeedItem.swift
//  EssentialFeed
//
//  Created by Oğuz Kaan Altun on 18.11.2023.
//

import Foundation

struct RemoteFeedItem: Decodable {
    let id: UUID
    let description: String?
    let location: String?
    let image: URL
}
