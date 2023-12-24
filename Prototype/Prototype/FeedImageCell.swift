//
//  FeedImageCell.swift
//  Prototype
//
//  Created by Oğuz Kaan Altun on 24.12.2023.
//

import UIKit

class FeedImageCell: UITableViewCell {
    @IBOutlet var locationContainer: UIStackView!
    @IBOutlet var locationLabel: UILabel!
    @IBOutlet var feedImageView: UIImageView!
    @IBOutlet var descriptionLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        feedImageView.alpha = 0
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        
        feedImageView.alpha = 0
    }
    
    func fadeIn(_ image: UIImage?) {
        feedImageView.image = image
        
        UIView.animate(withDuration: 0.3, delay: 0.3) {
            self.feedImageView.alpha = 1
        }
    }
}
