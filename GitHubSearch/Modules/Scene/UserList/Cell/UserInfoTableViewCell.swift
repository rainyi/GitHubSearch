//
//  UserInfoTableViewCell.swift
//  GitHubSearch
//
//  Created by rainyi on 2022/02/14.
//

import UIKit
import Kingfisher

class UserInfoTableViewCell: UITableViewCell {

    @IBOutlet weak var profileImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setupUI()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    private func setupUI() {
        // setup ui
    }
    
}

extension UserInfoTableViewCell {
    
    public func bind(viewModel: UserInfoTableViewCellViewModel) {
        profileImageView.kf.setImage(
            with: viewModel.profileURL,
            placeholder: nil,
            options: [.transition(.fade(0.5))]
        )
        
        nameLabel.text = viewModel.name
    }
    
}
