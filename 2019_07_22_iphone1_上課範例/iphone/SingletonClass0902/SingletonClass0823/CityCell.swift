//
//  CityCell.swift
//  SingletonClass0823
//
//  Created by Robert on 2019/8/23.
//  Copyright © 2019 ios1. All rights reserved.
//

import UIKit

class CityCell: UITableViewCell {
    @IBOutlet var cityImageView:UIImageView!;
    @IBOutlet var nameLabel:UILabel!;
    @IBOutlet var countryLabel:UILabel!;
    @IBOutlet var continentLabel:UILabel!;
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
