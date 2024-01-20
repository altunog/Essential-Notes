//
//  UITableView+Dequeueing.swift
//  EssentialFeediOS
//
//  Created by Oğuz Kaan Altun on 14.01.2024.
//

import UIKit

extension UITableView {
    func dequeueReusableCell<T: UITableViewCell>() -> T {
        let identifier = String(describing: T.self)
        return dequeueReusableCell(withIdentifier: identifier) as! T
    }
}
