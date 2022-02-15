//
//  UserInteractor.swift
//  GitHubSearch
//
//  Created by rainyi on 2022/02/14.
//

import Foundation
import RxSwift
import RxCocoa

protocol UserInteractorable {
    
    func fetchUserList(page: Int) -> Observable<[User]>
    
}

final class UserInteractor: UserInteractorable {
    
    let githubNetowrk: NetworkService<GitHubRouter>
    
    init(githubNetwork: NetworkService<GitHubRouter>) {
        self.githubNetowrk = githubNetwork
    }
    
    func fetchUserList(page: Int) -> Observable<[User]> {
        githubNetowrk.request(to: .userList(since: page), decode: [User].self).asObservable()
    }
    
}
