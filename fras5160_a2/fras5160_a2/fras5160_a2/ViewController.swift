//
//  ViewController.swift
//  fras5160_a2
//
//  Created by Matt F on 2021-01-28.
//

import UIKit

class ViewController: UIViewController {
    
    //image
    @IBOutlet weak var Image: UIImageView!
    
    //labels
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var answerLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //initalize deck
        _ = Deck()

        //saves the index of last card
        if let i = UserDefaults.standard.integer(forKey: "currentIndex") as Int?{
            print("current index: \(i)")
            Deck.setCurrentIndex(to: i) //restore the current Card
            showCard()
        }
        //Deck.setCard(for: i)//set the current index for the card
        
        //display the current card
        
    }//viewDidLoad
    
    @IBAction func showAnswer(_ sender: Any) {
        //will display text in the answer text field
        answerLabel.text = Deck.currentCard().answer
    }
    
    @IBAction func previous(_ sender: Any) {
        //base case if index is 0
        if Deck.current == 0{
            print("Cannot no back further")
        }else{
            //changes the current index to the one previous
            Deck.setCurrentIndex(to: Deck.current-1)
            showCard()
        }
    }
    
    @IBAction func next(_ sender: Any) {
        print(Deck.getCurrentIndex())
        //if all cards have been used then go back to 0
        if Deck.current > 2{
            Deck.setCurrentIndex(to: 0)
            showCard()
        }else{
            //adds 1 to the current card stack
            Deck.setCurrentIndex(to: Deck.current+1)
            showCard()
        }
        
            
        
    }
    func showCard(){
        //sets the image
        Image.image = UIImage(named: Deck.currentCard().image)
        //sets the new question
        questionLabel.text = Deck.currentCard().question
        answerLabel.text = " "
    }
    
}

