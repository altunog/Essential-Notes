//
//  LocalFeedImageDataLoader.swift
//  EssentialFeed
//
//  Created by Oğuz Kaan Altun on 3.03.2024.
//

import Foundation

public final class LocalFeedImageDataLoader {
    
    private let store: FeedImageDataStore
    
    public init(store: FeedImageDataStore) {
        self.store = store
    }
}

extension LocalFeedImageDataLoader: FeedImageDataCache {
    public enum SaveError: Swift.Error {
        case failed
    }
    
    public func save(_ data: Data, for url: URL) throws {
        do {
            try store.insert(data, for: url)
        } catch {
            throw SaveError.failed
        }
    }
}

extension LocalFeedImageDataLoader: FeedImageDataLoader {
    public enum LoadError: Error {
        case failed
        case notFound
    }
    
    public func loadImageData(from url: URL) throws -> Data {
        do {
            if let imageData = try store.retrieve(dataForURL: url), imageData.count > .zero {
                return imageData
            }
        } catch {
            throw  LoadError.failed
        }
        
        throw LoadError.notFound
    }
}
