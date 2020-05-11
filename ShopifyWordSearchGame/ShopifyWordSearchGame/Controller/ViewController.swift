//
//  ViewController.swift
//  ShopifyWordSearchGame
//
//  Created by Graham Sela on 2020-05-08.
//  Copyright © 2020 Graham Sela. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

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
    
    var wordFind: String! = ""
    
    var wordSearchObject = WordSearchObject()
    
    var colorArray: [UIButton]! = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    
    
    @IBAction func letterClicked(_ sender: UIButton) {
        //Need to create a word that keeps track of letters clicked. compare against struct.

        wordFind = wordFind + String(sender.currentTitle!)
        
        print(wordFind!)
        
        charGuess(sender)
    }
    
    func reset() {
        
        wordFind = ""
        for element in colorArray {
            element.backgroundColor = UIColor.clear
        }
        colorArray.removeAll()
        
    }
    
    func charGuess(_ sender: UIButton) {
        
        
        for word in wordSearchObject.words {
            if word.hasPrefix(wordFind) {
                if wordFind.count == word.count{
                    
                    for element in colorArray{
                        element.backgroundColor = UIColor.green
                        colorArray.removeAll()
                        foundWord();
                    }
                    
                } else{
                    sender.backgroundColor = UIColor.yellow
                    colorArray.append(sender)
                    return
                    
                }
            }
        }
        reset()
    }
    
    func foundWord() {
        
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
    }
    
    
}

