//
//  Deck.swift
//  fras5160_a2
//
//  Created by Matt F on 2021-02-07.
//

import Foundation

struct Deck{
    static var deck = [Card]()//a deck is an array of card
    static var current:Int = 0//index to current card
    
    init(){//initalize your deck with Card's
        Deck.deck.append(Card(image:"swift.png", question: "What am I?", answer: "Swift"))
        Deck.deck.append(Card(image:"apple.png", question: "What is this fruit?", answer: "Apple"))
        Deck.deck.append(Card(image:"ComputerScience.png", question: "What do I study?", answer: "Computer Science"))
        Deck.deck.append(Card(image:"GYM.png", question: "What place is this?", answer: "Gym"))
        
        
    }//init
    
    static func currentCard()->Card{ //return the current card in the deck
        return Deck.deck[current]
        
    }
    static func getCurrentIndex() -> Int{ //return the index of the current card in the deck
        return current;
    }
    static func setCurrentIndex(to i: Int){
        self.current = i
    }
    
}//Deck
