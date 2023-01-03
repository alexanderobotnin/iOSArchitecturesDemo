//
//  Date.swift
//  iOSArchitecturesDemo
//
//  Created by Alexander Obotnin on 28.12.2022.
//  Copyright © 2022 Alexander Obotnin. All rights reserved.
//

import Foundation

extension Date {
    
    func toString(withFormat format: String = "d.MM.yyyy") -> String {
        
        let dateFormatter = DateFormatter()
        dateFormatter.locale = Locale.current
        dateFormatter.timeZone = TimeZone.current
        dateFormatter.dateFormat = format
        let str = dateFormatter.string(from: self)
        
        return str
    }
}
