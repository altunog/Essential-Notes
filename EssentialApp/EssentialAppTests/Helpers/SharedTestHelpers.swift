//
//  SharedTestHelpers.swift
//  EssentialAppTests
//
//  Created by Oğuz Kaan Altun on 23.03.2024.
//

import Foundation

func anyData() -> Data {
    return Data("any data".utf8)
}

func anyURL() -> URL {
    return URL(string: "http://any-url.com")!
}

func anyNSError() -> NSError {
    return NSError(domain: "any error", code: 0)
}
