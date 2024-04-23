//
//  FakeRefreshController.swift
//  EssentialAppTests
//
//  Created by Oğuz Kaan Altun on 23.04.2024.
//

import UIKit

final class FakeRefreshControl: UIRefreshControl {
    private var _isRefreshing = false
    
    override var isRefreshing: Bool { _isRefreshing }
    
    override func beginRefreshing() {
        _isRefreshing = true
    }
    
    override func endRefreshing() {
        _isRefreshing = false
    }
}
