//
//  User.swift
//  GitHubSearch
//
//  Created by rainyi on 2022/02/14.
//

import Foundation

struct User: Hashable, Decodable {
    
    let uuid = UUID()
    var id: Int = 0
    var name: String = ""
    var profile: String = ""
    
    enum CodingKeys: String, CodingKey {
        case id
        case name = "login"
        case profile = "avatar_url"
    }
    
}
