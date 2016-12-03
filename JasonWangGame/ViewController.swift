//
//  ViewController.swift
//  JasonWangGame
//
//  Created by Andrew Hyungu Lee on 11/6/16.
//  Copyright © 2016 Andrew Hyungu Lee. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var backgroundImage: UIImageView!
    @IBOutlet weak var GetNumber: UILabel!
    @IBOutlet weak var Score: UILabel!
    @IBOutlet weak var slideinslideout: UISlider!
    @IBOutlet weak var resultText: UILabel!
    var get = Int(arc4random_uniform(51))
    var scorez = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        GetNumber.text = String(get)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    @IBAction func Slider(sender: UISlider) {
        var value = Int(slideinslideout.value)
        
        if(value == get){
            scorez+=5
            Score.text = String(scorez)
            get = Int(arc4random_uniform(51))
            GetNumber.text = String(get)
            resultText.text = String("You got it! +5 points")
        }
        else{
            scorez-=1
            Score.text = String(scorez)
            get = Int(arc4random_uniform(51))
            GetNumber.text = String(get)
            resultText.text = String("You didn't get it... -1 point")
        }
        
        if(scorez >= 10)
        {
            backgroundImage.image = UIImage(named:"JASONWANG")
            resultText.text = String("You win")
        }
    }

}

