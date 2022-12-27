//
//  ProfileViewCell.swift
//  Setting_Clone_App
//
//  Created by chungwoolee on 2022/12/26.
//

import UIKit

class ProfileCell: UITableViewCell {

    @IBOutlet weak var profileImageView: UIImageView!
    
    
    //처음 시작 포인트
    override func awakeFromNib() {
        super.awakeFromNib()
        let profileHeight = 60
        profileImageView.layer.cornerRadius = CGFloat(profileHeight / 2)
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}

