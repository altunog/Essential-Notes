//
//  FeedLoader.swift
//  EssentialFeed
//
//  Created by Oğuz Kaan Altun on 14.10.2023.
//

import Foundation

public enum LoadFeedResult<Error: Swift.Error> {
    case success([FeedItem])
    case failure(Error)
}

extension LoadFeedResult: Equatable where Error: Equatable {}

protocol FeedLoader {
    associatedtype Error: Swift.Error
    
    func loadFeed(completion: @escaping (LoadFeedResult<Error>) -> Void)
}
