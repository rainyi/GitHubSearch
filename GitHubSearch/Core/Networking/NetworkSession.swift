//
//  NetworkSession.swift
//  GitHubSearch
//
//  Created by rainyi on 2022/02/14.
//

import Foundation
import Alamofire

public class AlamofireSession: Alamofire.Session {
    
    public static let configuration: Alamofire.Session = {
        let configuration = URLSessionConfiguration.default
        configuration.headers = HTTPHeaders.default
        configuration.timeoutIntervalForRequest = 20
        configuration.timeoutIntervalForResource = 20
        configuration.requestCachePolicy = NSURLRequest.CachePolicy.useProtocolCachePolicy
        return Alamofire.Session(configuration: configuration)
    }()
    
}
