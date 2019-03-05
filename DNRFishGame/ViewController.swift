//
//  ViewController.swift
//  DNRFishGame
//
//  Created by Tristan Bressler on 2/2/19.
//  Copyright © 2019 LSSU. All rights reserved.
//

import UIKit

var MAXFISH = 3
var fish_to_find = 0

class FindFish: UIViewController {
    
    //Create Outlets
    @IBOutlet weak var textfield: UILabel!
    @IBOutlet weak var playagain: UIButton!
    @IBOutlet weak var home: UIButton!
    @IBOutlet weak var targetfish: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        textfield.isHidden = true
        playagain.isHidden = true
        home.isHidden = true
        playagain.isEnabled = false
        home.isEnabled = false
    
        fish_to_find = Int.random(in: 1 ... MAXFISH)
        
        targetfish.text = "Find Fish: \(fish_to_find)"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //Actions

    @IBAction func Playagain(_ sender: Any) {
        textfield.isHidden = true
        playagain.isHidden = true
        home.isHidden = true
        playagain.isEnabled = false
        home.isEnabled = false
        
        fish_to_find = Int.random(in : 1 ... MAXFISH)
        
        targetfish.text = "Find Fish: \(fish_to_find)"
    }
    
    
    @IBAction func SelectFish1(_ sender: Any) {
        if(fish_to_find == 1)
        {
            textfield.isHidden = false
            playagain.isHidden = false
            playagain.isEnabled = true
            home.isHidden = false
            home.isEnabled = true
        }
    }
    @IBAction func SelectFish2(_ sender: Any) {
        if(fish_to_find == 2)
        {
            textfield.isHidden = false
            playagain.isHidden = false
            playagain.isEnabled = true
            home.isHidden = false
            home.isEnabled = true
        }
    }
    @IBAction func SelectFish3(_ sender: Any) {
        if(fish_to_find == 3)
        {
            textfield.isHidden = false
            playagain.isHidden = false
            playagain.isEnabled = true
            home.isHidden = false
            home.isEnabled = true
        }
    }
}

class FishPuzzle: UIViewController {

    @IBOutlet weak var Fish1: UIImageView!
    @IBOutlet weak var Fish2: UIImageView!
    @IBOutlet weak var Fish3: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
