//
//  FeedImageDataStore.swift
//  EssentialFeed
//
//  Created by Oğuz Kaan Altun on 3.03.2024.
//

import Foundation

public protocol FeedImageDataStore {
    func insert(_ data: Data, for url: URL) throws
    func retrieve(dataForURL url: URL) throws -> Data?
}
