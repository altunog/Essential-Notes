//
//  InMemoryFeedStore.swift
//  EssentialFeed
//
//  Created by Oğuz Kaan Altun on 27.07.2024.
//

import Foundation

public class InMemoryFeedStore {
    private var feedCache: CachedFeed?
    private var feedImageDataCache: [URL: Data] = [:]
    
    public init() {}
}

extension InMemoryFeedStore: FeedStore {
    public func deleteCachedFeed() throws {
        feedCache = nil
    }
    
    public func insert(_ feed: [LocalFeedImage], timestamp: Date) throws {
        feedCache = CachedFeed(feed: feed, timestamp: timestamp)
    }
    
    public func retrieve() throws -> CachedFeed? {
        feedCache
    }
}

extension InMemoryFeedStore: FeedImageDataStore {
    public func insert(_ data: Data, for url: URL) throws {
        feedImageDataCache[url] = data
    }
    
    public func retrieve(dataForURL url: URL) throws -> Data? {
        feedImageDataCache[url]
    }
}
