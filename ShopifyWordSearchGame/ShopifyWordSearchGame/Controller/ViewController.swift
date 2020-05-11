//
//  ViewController.swift
//  ShopifyWordSearchGame
//
//  Created by Graham Sela on 2020-05-08.
//  Copyright © 2020 Graham Sela. All rights reserved.
//
//  A word search game that was a suggested IOS app build to apply
//  for an IOS internship at Shopify.
//  Project could certainly be simplified.
//

import UIKit

class ViewController: UIViewController {
    
    //Connect the way too many buttons and labels into the viewcontroller.
    
    @IBOutlet weak var foundWordsLabel: UILabel!
    @IBOutlet weak var winnerLabel: UILabel!
    
    @IBOutlet weak var Swift: UILabel!
    @IBOutlet weak var Kotlin: UILabel!
    @IBOutlet weak var ObjectiveC: UILabel!
    @IBOutlet weak var Variable: UILabel!
    @IBOutlet weak var Java: UILabel!
    @IBOutlet weak var Mobile: UILabel!
    @IBOutlet weak var Hire: UILabel!
    @IBOutlet weak var Intern: UILabel!
    @IBOutlet weak var Learn: UILabel!
    
    @IBOutlet weak var rand1: UIButton!
    @IBOutlet weak var rand2: UIButton!
    @IBOutlet weak var rand3: UIButton!
    @IBOutlet weak var rand4: UIButton!
    @IBOutlet weak var rand5: UIButton!
    @IBOutlet weak var rand6: UIButton!
    @IBOutlet weak var rand7: UIButton!
    @IBOutlet weak var rand8: UIButton!
    @IBOutlet weak var rand9: UIButton!
    @IBOutlet weak var rand10: UIButton!
    @IBOutlet weak var rand11: UIButton!
    @IBOutlet weak var rand12: UIButton!
    @IBOutlet weak var rand13: UIButton!
    @IBOutlet weak var rand14: UIButton!
    @IBOutlet weak var rand15: UIButton!
    @IBOutlet weak var rand16: UIButton!
    @IBOutlet weak var rand17: UIButton!
    @IBOutlet weak var rand18: UIButton!
    @IBOutlet weak var rand19: UIButton!
    @IBOutlet weak var rand20: UIButton!
    @IBOutlet weak var rand21: UIButton!
    @IBOutlet weak var rand22: UIButton!
    @IBOutlet weak var rand24: UIButton!
    @IBOutlet weak var rand23: UIButton!
    @IBOutlet weak var rand25: UIButton!
    @IBOutlet weak var rand26: UIButton!
    @IBOutlet weak var rand27: UIButton!
    @IBOutlet weak var rand28: UIButton!
    @IBOutlet weak var rand29: UIButton!
    @IBOutlet weak var rand30: UIButton!
    @IBOutlet weak var rand31: UIButton!
    @IBOutlet weak var rand32: UIButton!
    @IBOutlet weak var rand33: UIButton!
    @IBOutlet weak var rand34: UIButton!
    @IBOutlet weak var rand35: UIButton!
    @IBOutlet weak var rand36: UIButton!
    @IBOutlet weak var rand37: UIButton!
    @IBOutlet weak var rand38: UIButton!
    @IBOutlet weak var rand39: UIButton!
    @IBOutlet weak var rand40: UIButton!
    @IBOutlet weak var rand41: UIButton!
    @IBOutlet weak var rand42: UIButton!
    @IBOutlet weak var rand43: UIButton!
    @IBOutlet weak var rand44: UIButton!
    @IBOutlet weak var rand45: UIButton!
    
    
    @IBOutlet weak var learnL: UIButton!
    @IBOutlet weak var learnA: UIButton!
    @IBOutlet weak var learnR: UIButton!
    @IBOutlet weak var learnN: UIButton!
    @IBOutlet weak var learnE: UIButton!
    
    @IBOutlet weak var objcO: UIButton!
    @IBOutlet weak var objcB: UIButton!
    @IBOutlet weak var objcJ: UIButton!
    @IBOutlet weak var objcE: UIButton!
    @IBOutlet weak var objcC: UIButton!
    @IBOutlet weak var objcT: UIButton!
    @IBOutlet weak var objcI: UIButton!
    @IBOutlet weak var objcV: UIButton!
    @IBOutlet weak var objcE2: UIButton!
    @IBOutlet weak var objcC2: UIButton!
    
    @IBOutlet weak var internI: UIButton!
    @IBOutlet weak var internN: UIButton!
    @IBOutlet weak var internT: UIButton!
    @IBOutlet weak var internE: UIButton!
    @IBOutlet weak var internR: UIButton!
    @IBOutlet weak var internN2: UIButton!
    
    @IBOutlet weak var varV: UIButton!
    @IBOutlet weak var varA: UIButton!
    @IBOutlet weak var varR: UIButton!
    @IBOutlet weak var vartI: UIButton!
    @IBOutlet weak var varA2: UIButton!
    @IBOutlet weak var varB: UIButton!
    @IBOutlet weak var varL: UIButton!
    @IBOutlet weak var varE: UIButton!
    
    @IBOutlet weak var kotK: UIButton!
    @IBOutlet weak var kotO: UIButton!
    @IBOutlet weak var kotT: UIButton!
    @IBOutlet weak var kotL: UIButton!
    @IBOutlet weak var kotI: UIButton!
    @IBOutlet weak var kotN: UIButton!
    
    @IBOutlet weak var swiftS: UIButton!
    @IBOutlet weak var swiftW: UIButton!
    @IBOutlet weak var swiftI: UIButton!
    @IBOutlet weak var swiftF: UIButton!
    @IBOutlet weak var swiftT: UIButton!
    
    @IBOutlet weak var javaJ: UIButton!
    @IBOutlet weak var javaA: UIButton!
    @IBOutlet weak var javaV: UIButton!
    @IBOutlet weak var javaA2: UIButton!
    
    @IBOutlet weak var mobM: UIButton!
    @IBOutlet weak var mobO: UIButton!
    @IBOutlet weak var mobB: UIButton!
    @IBOutlet weak var mobI: UIButton!
    @IBOutlet weak var mobL: UIButton!
    @IBOutlet weak var mobE: UIButton!
    
    @IBOutlet weak var hireH: UIButton!
    @IBOutlet weak var hireI: UIButton!
    @IBOutlet weak var hireR: UIButton!
    @IBOutlet weak var hireE: UIButton!
    
    //  Initializing global variables:
    //  wordFind is a string that contains all guessed letters so that it can compare to a predefined set of words.
    //  wordSearchObject creates an object of the struct WordSearchObject. The struct contains all the words that have been predefined as search words.
    //  colorArray stores the UIButtons that have been selected for coloring purposes. Will color a button yellow when it has been selected, and will color a selection of buttons green when a word has been found.
    //  score simply stores how many words have been found.
    var wordFind: String! = ""
    
    var wordSearchObject = WordSearchObject()
    
    var colorArray: [UIButton]! = []
    
    var score = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Initialize the scoreboard
        foundWordsLabel.text = "Found Words: 0/9"
        winnerLabel.text = ""
        
    }
    
    
    @IBAction func letterClicked(_ sender: UIButton) {
        //  Function that triggers when a letter has been selected.
        //  Adds the new letter to a string to compare to the words.
        //  Adds the UIButton to an array for use of coloring.
        //  Calls a function charGuess that will determine what to do based on the letter that was selected.

        wordFind = wordFind + String(sender.currentTitle!)
        colorArray.append(sender)
        charGuess()
    }
    
    
    
    func charGuess() {
        //  charGuess first goes through all the words in the predefined/
        //  In the occasion that the letter or combination does match with a word, then
        //  the program checks as to whether it is the full word that has matched. If it has matched fully,
        //  the program then changes the found letters to green, as well as the word in the dictionary.
        //  And also removes the UIButtons from the colorArray Array.
        //  If it is not a full match and just a combination of chars that matches, then it colors the new char as yellow
        //  and returns out of the function.
        //  If no chars match, then the program calls the reset function.
        
        for word in wordSearchObject.words {
            
            if word.hasPrefix(wordFind) {
                
                if wordFind.count == word.count {
                    
                    for element in colorArray {
                        
                        element.backgroundColor = UIColor.green
                        
                    }
                    
                    colorArray.removeAll()
                    foundWord();
                    
                } else{
                    
                    colorArray[colorArray.count - 1].backgroundColor = UIColor.yellow
                    
                    return
                    
                }
            }
        }
        
        reset()
    }
    
    func reset() {
    //  The reset function gets rid of all chars in the wordFind string. And resets all yellow colored chars back to clear.
    //  It also removes all the UIButtons from the colorArray.
        
        wordFind = ""
        
        for element in colorArray {
            
            element.backgroundColor = UIColor.clear
            
        }
        
        colorArray.removeAll()
        
    }
    
    func foundWord() {
    // The foundWord function does two things. Updates the score of the game.
    //  And figures out which word in the dictionary needs to be changed to green as in it has been found.
        
        score += 1
        
        foundWordsLabel.text = "Found Words : \(score)/9"
        
        
        
        if (wordFind == "KOTLIN") {
            
            Kotlin.backgroundColor = UIColor.green
            
        } else if (wordFind == "VARIABLE") {
            
           Variable.backgroundColor = UIColor.green
            
        } else if (wordFind == "JAVA") {
            
            Java.backgroundColor = UIColor.green
            
        } else if (wordFind == "INTERN") {
            
            Intern.backgroundColor = UIColor.green
            
        } else if (wordFind == "HIRE") {
            
            Hire.backgroundColor = UIColor.green
            
        } else if (wordFind == "LEARN") {
            
            Learn.backgroundColor = UIColor.green
            
        } else if (wordFind == "SWIFT") {
            
            Swift.backgroundColor = UIColor.green
            
        } else if (wordFind == "OBJECTIVEC") {
            
            ObjectiveC.backgroundColor = UIColor.green
            
        } else if (wordFind == "MOBILE") {
            
            Mobile.backgroundColor = UIColor.green
            
        }
        
        if score == 9 {
            winner()
        }
    }
    
    func winner() {
        winnerLabel.text = "YOUVE WON! GOOD JOB!"
    }
}

