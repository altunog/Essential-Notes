//
//  UIView+TestHelpers.swift
//  EssentialAppTests
//
//  Created by Oğuz Kaan Altun on 4.05.2024.
//

import UIKit

extension UIView {
    func enforceLayoutCycle() {
        layoutIfNeeded()
        RunLoop.current.run(until: Date())
    }
}
