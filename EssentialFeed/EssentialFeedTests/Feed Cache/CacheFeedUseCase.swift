//
//  CacheFeedUseCase.swift
//  EssentialFeedTests
//
//  Created by Oğuz Kaan Altun on 12.11.2023.
//

import XCTest

class LocalFeedLoader {
    init(store: FeedStore) {
        
    }
}

class FeedStore {
    var deleteCachedFeedCallCount = 0
}

final class CacheFeedUseCase: XCTestCase {

    func test_init_doesNotDeleteCacheUponCreation() {
        let store = FeedStore()
        _ = LocalFeedLoader(store: store)
        
        XCTAssertEqual(store.deleteCachedFeedCallCount, 0)
    }

}
