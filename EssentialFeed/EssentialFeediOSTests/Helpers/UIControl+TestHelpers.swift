//
//  UIControl+TestHelpers.swift
//  EssentialFeediOSTests
//
//  Created by Oğuz Kaan Altun on 3.01.2024.
//

import UIKit

extension UIControl {
    func simulate(event: UIControl.Event) {
        allTargets.forEach { target in
            actions(forTarget: target, forControlEvent: event)?.forEach{
                (target as NSObject).perform(Selector($0))
            }
        }
    }
}
