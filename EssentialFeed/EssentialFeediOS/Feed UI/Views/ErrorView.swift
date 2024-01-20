//
//  ErrorView.swift
//  EssentialFeediOS
//
//  Created by Oğuz Kaan Altun on 20.01.2024.
//

import UIKit

public final class ErrorView: UIView {
    @IBOutlet private var label: UILabel!
    
    public var message: String? {
        get { label.text }
        set { label.text = newValue }
    }
    
    public override func awakeFromNib() {
        super.awakeFromNib()
        
        label.text = nil
    }
}
