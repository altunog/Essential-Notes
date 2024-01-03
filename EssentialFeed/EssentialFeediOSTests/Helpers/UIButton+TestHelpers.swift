//
//  UIButton+TestHelpers.swift
//  EssentialFeediOSTests
//
//  Created by Oğuz Kaan Altun on 3.01.2024.
//

import UIKit

extension UIButton {
    func simulateTap() {
        simulate(event: .touchUpInside)
    }
}
