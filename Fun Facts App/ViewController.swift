//
//  ViewController.swift
//  Fun Facts App
//
//  Created by Patrick Li on 6/29/17.
//  Copyright © 2017 Patrick Li. All rights reserved.
//

import UIKit
import Foundation

class ViewController: UIViewController {
    
    @IBOutlet weak var generateNewFactButton: UIButton!
    @IBOutlet weak var funFactLabel: UILabel!
    var factArray: [String] = []
    var colorArray: [UIColor] = []
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        //setting fact array values
        self.factArray = ["Banging your head against a wall burns 150 calories an hour.",
                          "In the UK, it is illegal to eat mince pies on Christmas Day!",
                          "Pteronophobia is the fear of being tickled by feathers!",
                          "When hippos are upset, their sweat turns red.",
                          "A flock of crows is known as a murder.",
                          "“Facebook Addiction Disorder” is a mental disorder identified by Psychologists.",
                          "The average woman uses her height in lipstick every 5 years.",
                          "29th May is officially “Put a Pillow on Your Fridge Day“.",
                          "Cherophobia is the fear of fun.",
                          "Human saliva has a boiling point three times that of regular water.",
                          "If you lift a kangaroo’s tail off the ground it can’t hop.",
                          "Bananas are curved because they grow towards the sun.",
                          "Billy goats urinate on their own heads to smell more attractive to females.",
                          "The person who invented the Frisbee was cremated and made into frisbees after he died!",
                          "During your lifetime, you will produce enough saliva to fill two swimming pools.",
                          "If Pinokio says “My Nose Will Grow Now”, it would cause a paradox.",
                          "Polar bears can eat as many as 86 penguins in a single sitting. (If they lived in the same place)",
                          
            ]
        
        
        //setting color array
        self.colorArray = [UIColor(red: 26/255, green: 188/255, blue: 156/255, alpha: 1),
            UIColor(red: 155/255, green: 89/255, blue: 182/255, alpha: 1),
            UIColor(red: 26/255, green: 204/255, blue: 113/255, alpha: 1),
            UIColor(red: 52/255, green: 152/255, blue: 219/255, alpha: 1),
            UIColor(red: 52/255, green: 73/255, blue: 94/255, alpha: 1),
        ]
        
        //set inital background color
        let randColor = Int(arc4random_uniform(UInt32(self.colorArray.count)))
        let color = self.colorArray[randColor]
        self.view.backgroundColor = color
        self.generateNewFactButton.setTitleColor(color, for: .normal)
        
        //set initial fact
        let random = Int(arc4random_uniform(UInt32(self.factArray.count)))
        let randomFact = self.factArray[random]
        self.funFactLabel.text = randomFact

        
        
    }
    
    
    
    @IBAction func GenerateNewFactClicked(_ sender: Any) {
        //generate randome index for array
        //this generates a number from 0 to array.length-1
        let random = Int(arc4random_uniform(UInt32(self.factArray.count)))
        let randomFact = self.factArray[random]
        print(randomFact)
    
        //now set Fun Fact Label to the randomly generated fact
        self.funFactLabel.text = randomFact
        
        //see if you can make the background change when you click on generate new fact
        
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    
    
    
    
    
    
    
    
    
    
    

}

