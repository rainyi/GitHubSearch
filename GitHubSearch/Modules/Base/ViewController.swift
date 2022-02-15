//
//  ViewController.swift
//  GitHubSearch
//
//  Created by rainyi on 2022/01/28.
//

import UIKit
import RxSwift
import RxCocoa

class ViewController: UIViewController {
    
    public init() {
        super.init(nibName: nil, bundle: nil)
    }
    
    public required convenience init?(coder: NSCoder) {
        self.init()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        setupConstraints()
        inputBinding()
        outputBinding()
    }
    
    deinit {
        print("\(type(of: self)): Deinited")
    }
    
    open func setupUI() {}
    
    open func setupConstraints() {}
    
    open func inputBinding() {}
    
    open func outputBinding() {}
    
}

