//
//  FeedImagePresenterTests.swift
//  EssentialFeedTests
//
//  Created by Oğuz Kaan Altun on 21.01.2024.
//

import XCTest

final class FeedImagePresenter {
    init(view: Any) {
        
    }
}

final class FeedImagePresenterTests: XCTestCase {

    func test_init_doesNotSendMessageToView() {
        let (_, view) = makeSUT()
        
        XCTAssertTrue(view.messages.isEmpty, "Expected no view messages")
    }

    // MARK: - Helpers
    
    private func makeSUT(file: StaticString = #filePath, line: UInt = #line) -> (sut: FeedImagePresenter, view: ViewSpy) {
        let view = ViewSpy()
        let sut = FeedImagePresenter(view: view)
        trackForMemoryLeaks(view, file: file, line: line)
        trackForMemoryLeaks(sut, file: file, line: line)
        return (sut, view)
    }
    
    private class ViewSpy {
        var messages = [Any]()
    }
}
