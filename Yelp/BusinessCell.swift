//
//  BusinessCell.swift
//  Yelp
//
//  Created by lesleychai on 2/20/16.
//  Copyright © 2016 Timothy Lee. All rights reserved.
//

import UIKit

class BusinessCell: UITableViewCell {
    
    @IBOutlet weak var thumbImgView: UIImageView!
    @IBOutlet weak var ratingImgView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var distanceLabel: UILabel!
    @IBOutlet weak var reviewCountLabel: UILabel!
    @IBOutlet weak var addressLabel: UILabel!
    @IBOutlet weak var categoriesLabel: UILabel!
    
    var business: Business!{
        didSet{
            thumbImgView.setImageWithURL(business.imageURL!)
            ratingImgView.setImageWithURL(business.ratingImageURL!)
            nameLabel.text = business.name
            distanceLabel.text = business.distance 
            categoriesLabel.text = business.categories
            addressLabel.text = business.address
            reviewCountLabel.text = "\(business.reviewCount!) reviews"
        }
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        
        thumbImgView.layer.cornerRadius = 3;
        thumbImgView.clipsToBounds = true;
        
        nameLabel.preferredMaxLayoutWidth = nameLabel.frame.size.width
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        nameLabel.preferredMaxLayoutWidth = nameLabel.frame.size.width
    }
    
    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    
}
