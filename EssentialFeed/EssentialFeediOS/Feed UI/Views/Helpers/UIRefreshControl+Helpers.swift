//
//  UIRefreshControl+Helpers.swift
//  EssentialFeediOS
//
//  Created by Oğuz Kaan Altun on 21.01.2024.
//

import UIKit

extension UIRefreshControl {
    func update(isRefreshing: Bool) {
        isRefreshing ? beginRefreshing() : endRefreshing()
    }
}
