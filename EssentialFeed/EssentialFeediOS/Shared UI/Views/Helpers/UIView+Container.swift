//
//  UIView+Container.swift
//  EssentialFeediOS
//
//  Created by Oğuz Kaan Altun on 30.06.2024.
//

import UIKit

extension UIView {
    
    public func makeContainer() -> UIView {
        let container = UIView()
        container.backgroundColor = .clear
        container.addSubview(self)
        
        translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            leadingAnchor.constraint(equalTo: container.leadingAnchor),
            trailingAnchor.constraint(equalTo: container.trailingAnchor),
            topAnchor.constraint(equalTo: container.topAnchor),
            bottomAnchor.constraint(equalTo: container.bottomAnchor)
        ])
        
        return container
    }
}
