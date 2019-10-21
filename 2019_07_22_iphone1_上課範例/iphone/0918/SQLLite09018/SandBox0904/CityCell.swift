//
//  CityCell.swift
//  SandBox0904
//
//  Created by Robert on 2019/9/18.
//  Copyright © 2019 ios1. All rights reserved.
//

import UIKit

class CityCell: UITableViewCell {
    @IBOutlet var cityImageView:UIImageView!;
    @IBOutlet var cityTitleLabel:UILabel!;
    @IBOutlet var cityDetailLabel:UILabel!;
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

       
    }

}
