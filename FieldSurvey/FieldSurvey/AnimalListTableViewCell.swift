//
//  AnimalListTableViewCell.swift
//  FieldSurvey
//
//  Created by Ryan Glascock on 4/29/19.
//  Copyright © 2019 Ryan Glascock. All rights reserved.
//

import UIKit

class AnimalListTableViewCell: UITableViewCell {

    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var AnimalIconImageView: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
