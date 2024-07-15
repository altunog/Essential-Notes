//
//  FeedImageLoader.swift
//  EssentialFeediOS
//
//  Created by Oğuz Kaan Altun on 3.01.2024.
//

import Foundation

public protocol FeedImageDataLoader {
    func loadImageData(from url: URL) throws -> Data
}
