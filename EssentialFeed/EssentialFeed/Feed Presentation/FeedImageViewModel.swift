//
//  FeedImageViewModel.swift
//  EssentialFeed
//
//  Created by Oğuz Kaan Altun on 21.01.2024.
//

public struct FeedImageViewModel {
    public let description: String?
    public let location: String?
    
    public var hasLocation: Bool {
        return location != nil
    }
}
