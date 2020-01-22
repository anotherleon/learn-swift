//
//  PlayingCardDeck.swift
//  PlayingCard
//
//  Created by 王亮 on 2020/1/22.
//  Copyright © 2020 王亮. All rights reserved.
//

import Foundation

struct PlayingCardDeck {
    private(set) var cards = [PlayingCard]()
    
    init() {
        for suit in Suit.all {
            for rank in Rank.all{
                cards.append(PlayingCard(suit: suit, rank: rank))
            }
        }
    }
    
    mutating func draw() -> PlayingCard? {
        if cards.count > 0 {
            return cards.remove(at: cards.count.arc4random)
        } else {
            return nil
        }
    }
}


extension Int {
    var arc4random: Int {
        if self > 0 {
            return Int(arc4random_uniform(UInt32(self)))
        } else if self < 0 {
             return -Int(arc4random_uniform(UInt32(self)))
        } else {
            return 0
        }
    }
}
