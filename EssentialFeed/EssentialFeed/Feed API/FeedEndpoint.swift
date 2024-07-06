//
//  FeedEndpoint.swift
//  EssentialFeed
//
//  Created by Oğuz Kaan Altun on 6.07.2024.
//

import Foundation

public enum FeedEndpoint {
    case get
    
    public func url(baseURL: URL) -> URL {
        switch self {
        case .get:
            return baseURL.appending(path: "/v1/feed")
        }
    }
}
