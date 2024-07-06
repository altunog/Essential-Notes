//
//  FeedEndpointTests.swift
//  EssentialFeedTests
//
//  Created by Oğuz Kaan Altun on 6.07.2024.
//

import XCTest
import EssentialFeed

final class FeedEndpointTests: XCTestCase {

    func test_feed_enpointURL() {
        let baseURL = URL(string: "http://base-url.com")!
        
        let received = FeedEndpoint.get.url(baseURL: baseURL)
        let expected = URL(string: "http://base-url.com/v1/feed")!
        
        XCTAssertEqual(received, expected)
    }

}
