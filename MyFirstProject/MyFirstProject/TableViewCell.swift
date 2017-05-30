//
//  TableViewCell.swift
//  MyFirstProject
//
//  Created by std115 on 5/29/17.
//  Copyright © 2017 std115. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var iconImageView: UIImageView!
    @IBOutlet weak var accessoryLabel: UILabel!
    @IBOutlet weak var categoryLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setupUI(news:News){
        self.iconImageView.image = news.iconImage
        self.descriptionLabel.text = news.description
        self.titleLabel.text = news.title
        self.accessoryLabel.text = "\(news.author) - \(news.view) view - \(news.createDate)"
        self.categoryLabel.text = news.category
    }
}
