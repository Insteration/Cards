//
//  Cards.swift
//  Cards
//
//  Created by Artem Karmaz on 4/22/19.
//  Copyright © 2019 Johansson Group. All rights reserved.
//

import UIKit

struct Cards {
    var color: UIColor
    var text: String
    var image: String
    
    init(color: UIColor, text: String, image: String) {
        self.color = color
        self.text = text
        self.image = image
    }
}
