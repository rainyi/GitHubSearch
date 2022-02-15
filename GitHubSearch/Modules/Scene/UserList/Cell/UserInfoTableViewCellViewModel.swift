//
//  UserInfoTableViewCellViewModel.swift
//  GitHubSearch
//
//  Created by rainyi on 2022/02/14.
//

import Foundation

struct UserInfoTableViewCellViewModel {
    
    // MARK: - Properties
    
    let user: User
    
    // MARK: - Initialize
    
    init(user: User) {
        self.user = user
    }
    
    // MARK: - Helper
    
    var profileURL: URL? {
        URL(string: user.profile)
    }
    
    var name: String {
        user.name
    }
    
}
