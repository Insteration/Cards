//
//  CardsSwipeProtocols.swift
//  Cards
//
//  Created by Artem Karmaz on 4/22/19.
//  Copyright © 2019 Johansson Group. All rights reserved.
//

import UIKit

protocol CardsSwipeDataSource {
    func numberOfCardsToShow() -> Int
    func card(at index: Int) -> CardSwipeView
    func emptyView() -> UIView?
}

protocol CardsSwipeDelegate {
    func swipeDidEnd(on view: CardSwipeView)
}
