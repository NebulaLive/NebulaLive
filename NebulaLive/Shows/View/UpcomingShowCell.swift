//
//  UpcomingShowCell.swift
//  NebulaLive
//
//  Created by Kyle Thomas on 09/08/2018.
//  Copyright © 2018 Kyle Thomas. All rights reserved.
//

import UIKit

class UpcomingShowCell: UICollectionViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        self.translatesAutoresizingMaskIntoConstraints = false
        self.contentView.widthAnchor.constraint(equalToConstant: 0.0)
    }

}
