//
//  FeedImageDataCache.swift
//  EssentialFeed
//
//  Created by Oğuz Kaan Altun on 24.03.2024.
//

import Foundation

public protocol FeedImageDataCache {
    func save(_ data: Data, for url: URL) throws
}
