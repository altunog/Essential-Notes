////
////  FeedLoaderWithFallbackComposite.swift
////  EssentialApp
////
////  Created by Oğuz Kaan Altun on 17.03.2024.
////
//
//import EssentialFeed
//
//public class FeedLoaderWithFallbackComposite: FeedLoader {
//    private let primary: FeedLoader
//    private let fallback: FeedLoader
//    
//    public init(primary: FeedLoader, fallback: FeedLoader) {
//        self.primary = primary
//        self.fallback = fallback
//    }
//    
//    public func load(completion: @escaping (Swift.Result<[FeedImage], Error>) -> Void) {
//        primary.load { [weak self] result in
//            switch result {
//            case .success:
//                completion(result)
//                
//            case .failure:
//                self?.fallback.load(completion: completion)
//            }
//        }
//    }
//}
