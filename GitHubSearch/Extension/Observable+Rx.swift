//
//  Observable+Rx.swift
//  GitHubSearch
//
//  Created by rainyi on 2022/02/14.
//

import Foundation
import RxSwift
import RxCocoa

extension ObservableType {
    
    func mapToVoid() -> Observable<Void> {
        map { _ in }
    }
    
    func asDriverOnErrorJustComplete() -> Driver<Element> {
        asDriver { _ in .empty() }
    }
    
}
