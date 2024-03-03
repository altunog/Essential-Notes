//
//  CoreDataFeedStore+FeedImageDataStore.swift
//  EssentialFeed
//
//  Created by Oğuz Kaan Altun on 3.03.2024.
//

import Foundation

extension CoreDataFeedStore: FeedImageDataStore {
    
    public func insert(_ data: Data, for url: URL, completion: @escaping (FeedImageDataStore.InsertionResult) -> Void) {
        perform { context in
            completion(Result(catching: {
                let image = try ManagedFeedImage.first(with: url, in: context)
                image?.data = data
                try? context.save()
            }))
            
        }
    }
    
    public func retrieve(dataForURL url: URL, completion: @escaping (FeedImageDataStore.RetrievalResult) -> Void) {
        perform { context in
            completion(Result(catching: {
                return try ManagedFeedImage.first(with: url, in: context)?.data
            }))
        }
    }
}
