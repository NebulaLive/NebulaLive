//
//  GenreTableViewCell.swift
//  NebulaLive
//
//  Created by Kyle Thomas on 04/09/2018.
//  Copyright © 2018 Kyle Thomas. All rights reserved.
//

import UIKit

class GenreTableViewCell: UITableViewCell {
    @IBOutlet var selectedDot: UIImageView!
    
    @IBOutlet var nameLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        self.translatesAutoresizingMaskIntoConstraints = false
        self.contentView.widthAnchor.constraint(equalToConstant: 0.0)

    }

    override func setSelected(_ selected: Bool, animated: Bool) {
//        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
