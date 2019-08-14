//
//  FriendCell.swift
//  vk_app_1
//
//  Created by Dmitry Andreyanov on 8/13/19.
//  Copyright © 2019 Dmitrii Andreianov. All rights reserved.
//

import UIKit

class FriendCell: UITableViewCell {
    @IBOutlet var FriendAvatar: UIImageView!
    @IBOutlet var FriendNameLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
