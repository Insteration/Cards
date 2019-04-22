//
//  Cards.swift
//  Cards
//
//  Created by Artem Karmaz on 4/22/19.
//  Copyright © 2019 Johansson Group. All rights reserved.
//

import UIKit

struct Cards {
    var bgColor: UIColor
    var text: String
    var image: String
    
    init(bgColor: UIColor, text: String, image: String) {
        self.bgColor = bgColor
        self.text = text
        self.image = image
    }
}
