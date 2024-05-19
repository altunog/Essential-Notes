////
////  FeedLoaderCacheDecorator.swift
////  EssentialApp
////
////  Created by Oğuz Kaan Altun on 24.03.2024.
////
//
//import EssentialFeed
//
//public final class FeedLoaderCacheDecorator: FeedLoader {
//    private let decoratee: FeedLoader
//    private let cache: FeedCache
//    
//    public init(decoratee: FeedLoader, cache: FeedCache) {
//        self.decoratee = decoratee
//        self.cache = cache
//    }
//    
//    public func load(completion: @escaping (Swift.Result<[FeedImage], Error>) -> Void) {
//        decoratee.load { [weak self] result in
//            completion(result.map { feed in
//                self?.cache.saveIgnoringResult(feed)
//                return feed
//            })
//        }
//    }
//}
//
//private extension FeedCache {
//    func saveIgnoringResult(_ feed: [FeedImage]) {
//        save(feed) { _ in }
//    }
//}
