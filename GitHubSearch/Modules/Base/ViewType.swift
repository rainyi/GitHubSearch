//
//  ViewType.swift
//  GitHubSearch
//
//  Created by rainyi on 2022/02/14.
//

import Foundation

protocol ViewType: AnyObject {
    
    associatedtype ViewModelType
    
    var viewModel: ViewModelType { get }
    
}
