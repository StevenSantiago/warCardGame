//
//  ViewController.swift
//  WarCardGame
//
//  Created by Steven Santiago on 1/5/17.
//  Copyright © 2017 Steven Santiago. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var rightImageView: UIImageView!
    @IBOutlet weak var leftImageView: UIImageView!
    @IBOutlet weak var leftScoreLabel: UILabel!
    @IBOutlet weak var rightScoreLabel: UILabel!
    
    let cardNames = ["ace","card2","card3","card4","card5","card6","card7","card8","card9","card10","jack","queen","king"]
    
    var CPUscore = 0
    var Playerscore = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func dealTapped(_ sender: Any) {
        let leftNumber = Int(arc4random_uniform(13))
        let rightNumber = Int(arc4random_uniform(13))
        
        if leftNumber > rightNumber {
            Playerscore = Playerscore + 1
            leftScoreLabel.text = String(Playerscore)
        }else if leftNumber == rightNumber {
            Playerscore = Playerscore + 0
            CPUscore = CPUscore + 0
        } else {
            CPUscore = CPUscore + 1
            rightScoreLabel.text = String(CPUscore)
        }
        
        leftImageView.image = UIImage(named: cardNames[leftNumber])
        rightImageView.image = UIImage(named: cardNames[rightNumber])
    }

}

