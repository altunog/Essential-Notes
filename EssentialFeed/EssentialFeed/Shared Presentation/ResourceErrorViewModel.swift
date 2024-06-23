//
//  ResourceErrorViewModel.swift
//  EssentialFeed
//
//  Created by Oğuz Kaan Altun on 21.01.2024.
//

public struct ResourceErrorViewModel {
    public let message: String?
    
    static var noError: ResourceErrorViewModel {
        return ResourceErrorViewModel(message: nil)
    }
    
    static func error(message: String) -> ResourceErrorViewModel {
        return ResourceErrorViewModel(message: message)
    }
}
