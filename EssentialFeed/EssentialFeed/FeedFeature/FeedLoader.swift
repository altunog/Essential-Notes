//
//  FeedLoader.swift
//  EssentialFeed
//
//  Created by Oğuz Kaan Altun on 14.10.2023.
//

import Foundation

public enum LoadFeedResult {
    case success([FeedImage])
    case failure(Error)
}

public protocol FeedLoader {
    func load(completion: @escaping (LoadFeedResult) -> Void)
}
