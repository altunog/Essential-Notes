//
//  FeedLoader.swift
//  EssentialFeed
//
//  Created by Oğuz Kaan Altun on 14.10.2023.
//

import Foundation

typealias LoadFeedResult = Result<[FeedItem], Error>

protocol FeedLoader {
    func loadFeed(completion: @escaping (LoadFeedResult) -> Void)
}
