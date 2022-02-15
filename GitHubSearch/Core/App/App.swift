//
//  App.swift
//  GitHubSearch
//
//  Created by rainyi on 2022/02/14.
//

import Foundation
import UIKit
import Then
import RxSwift
import RxCocoa

final class App: NSObject {
    
    /// singleton
    static let shared = App()
    
    // MARK: - Properties
    var window: UIWindow?
    var windowScene: UIWindowScene?
    let navigator: Navigator
    let githubNetwork: NetworkService<GitHubRouter>
    
    private override init() {
        self.navigator = Navigator()
        self.githubNetwork = NetworkService<GitHubRouter>()
        super.init()
    }
    
    func presentInitialScreen(in window: UIWindow, with windowScene: UIWindowScene, options connectionOptions: UIScene.ConnectionOptions) {
        self.window = window
        self.windowScene = windowScene
        self.window?.backgroundColor = App.color.white
        self.window?.makeKeyAndVisible()
        
        self.navigator.show(scene: .userList, sender: nil, transitionType: .root(in: window))
    }
    
}
