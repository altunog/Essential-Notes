//
//  ImageCommentsEndpoint.swift
//  EssentialFeed
//
//  Created by Oğuz Kaan Altun on 6.07.2024.
//

import Foundation

public enum ImageCommentsEndpoint {
    case get(UUID)
    
    public func url(baseURL: URL) -> URL {
        switch self {
        case .get(let id):
            return baseURL.appending(path: "/v1/image/\(id)/comments")
        }
    }
}
