//
//  ProfileViewCell.swift
//  Setting_Clone_App
//
//  Created by chungwoolee on 2022/12/26.
//

import UIKit

class ProfileCell: UITableViewCell {

    @IBOutlet weak var profileImageView: UIImageView!
    
    @IBOutlet weak var topTitleLabel: UILabel!
    
    @IBOutlet weak var bottomDescriptionLabel: UILabel!
    //처음 시작 포인트
    override func awakeFromNib() {
        super.awakeFromNib()
        let profileHeight = 60
        profileImageView.layer.cornerRadius = CGFloat(profileHeight / 2)
        
        topTitleLabel.textColor = .blue
        topTitleLabel.font = UIFont.systemFont(ofSize: 20)
        
        bottomDescriptionLabel.textColor = .darkGray
        bottomDescriptionLabel.font = UIFont.systemFont(ofSize: 16)
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}

