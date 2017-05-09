//
//  TableCellItem.swift
//  iQuiz
//
//  Created by Vicky Juan on 5/9/17.
//  Copyright © 2017 Victoria Juan. All rights reserved.
//

import Foundation

class TabelCellItem {
    var subject: String
    var description: String
    var image: String
    
    init(Subject subject: String, Description description: String, Image image: String) {
        self.subject = subject
        self.description = description
        self.image = image
    }
}
