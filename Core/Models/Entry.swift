//
//  Entry.swift
//  xclean
//
//  Created by Deszip on 04/01/2017.
//  Copyright © 2017 Deszip. All rights reserved.
//

import Foundation

class Entry: CustomStringConvertible {
    
    private let formatter: Formatter = Formatter()
    let url: URL
    
    var size: Int64 = 0
    var formattedSize: String = ""
    var accessDate: Date = Date()
    var displayName: String
    
    init(url: URL) {
        self.url = url
        self.displayName = url.lastPathComponent
    }
    
    func metadataDescription() -> [String] {
        return [displayName, formattedSize, formatter.formattedDate(accessDate)]
    }
    
    var description: String {
        return "\(url): \(displayName)"
    }
    
}
