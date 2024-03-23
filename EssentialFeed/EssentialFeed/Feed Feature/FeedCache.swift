//
//  FeedCache.swift
//  EssentialFeed
//
//  Created by Oğuz Kaan Altun on 24.03.2024.
//

import Foundation

public protocol FeedCache {
    typealias SaveResult = Result<Void, Error>
    
    func save(_ feed: [FeedImage], completion: @escaping (SaveResult) -> Void)
}
