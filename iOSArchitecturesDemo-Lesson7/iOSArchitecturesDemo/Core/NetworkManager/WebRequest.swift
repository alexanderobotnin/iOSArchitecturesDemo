//
//  WebRequest.swift
//  iOSArchitecturesDemo
//
//  Created by Alexander Obotnin on 28.12.2022.
//  Copyright © 2022 Alexander Obotnin. All rights reserved.
//

import Foundation
import Alamofire

struct WebRequest {
    var method: HTTPMethod
    var url: String
    var parameters: Parameters
}

extension WebRequest: CustomStringConvertible {
    
    var description: String {
        return "WebRequest: method \(method.rawValue), url: \(url), parameters: \(parameters)"
    }
}
