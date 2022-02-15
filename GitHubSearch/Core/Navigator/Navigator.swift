//
//  Navigator.swift
//  GitHubSearch
//
//  Created by rainyi on 2022/02/14.
//

import Foundation
import UIKit

enum Scene {
    case userList
    //  case userDetail
}

protocol Navigatable {
    
    func get(for scene: Scene) -> UIViewController
}

class Navigator: Navigatable {
    
    private let githubNetwork = NetworkService<GitHubRouter>()
    
    func get(for scene: Scene) -> UIViewController {
        
        switch scene {
        case .userList:
            let interactor = UserInteractor(githubNetwork: githubNetwork)
            let viewModel = UserListViewModel(userInteractor: interactor)
            return UserListViewController(viewModel: viewModel, navigator: self)
        }
    }
    
}
