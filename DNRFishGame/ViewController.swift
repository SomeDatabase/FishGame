//
//  ViewController.swift
//  DNRFishGame
//
//  Created by Tristan Bressler on 2/2/19.
//  Copyright © 2019 LSSU. All rights reserved.
//

import UIKit

let screenWidth  = UIScreen.main.bounds.width
let screenHeight = UIScreen.main.bounds.height

var TOTALFISH = 11
var MAXFISH = TOTALFISH - 1 //for array use
var xvalue = 0
var yvalue = 0
var goodplacement = true
var XMAXBORDER = Int(screenWidth) - 250
var YMAXBORDER = Int(screenHeight) - 200
var fish_to_find = 0
var xlocations = Array(repeating: -1, count: TOTALFISH)
var ylocations = Array(repeating: -1, count: TOTALFISH)
let fish = ["Atlantic Salmon", "Brook Trout", "Brown Trout", "Chinook Salmon", "Coho Salmon", "Lake Sturgeon", "Lake Trout", "Muskellunge", "Rainbow Trout", "Steelhead Trout", "Walleye"]
let fishimages = ["Atlantic Salmon (Cleaned).png", "Brook Trout (Cleaned).png", "Brown Trout (Cleaned).png", "Chinook Salmon (Cleaned).png", "Coho Salmon (Cleaned).png", "Lake Sturgeon.png", "Lake Trout (Cleaned).png", "Muskellunge.png", "Rainbow Trout (Cleaned).png", "Steelhead Trout (Cleaned).png", "Walleye.png"]

class FindFish: UIViewController {
    
    //Create Outlets
    @IBOutlet weak var textfield: UILabel!
    @IBOutlet weak var playagain: UIButton!
    @IBOutlet weak var home: UIButton!
    @IBOutlet weak var AtlanticSalmon: UIButton!
    @IBOutlet weak var BrookTrout: UIButton!
    @IBOutlet weak var BrownTrout: UIButton!
    @IBOutlet weak var ChinookSalmon: UIButton!
    @IBOutlet weak var CohoSalmon: UIButton!
    @IBOutlet weak var LakeSturgeon: UIButton!
    @IBOutlet weak var LakeTrout: UIButton!
    @IBOutlet weak var Muskellunge: UIButton!
    @IBOutlet weak var RainbowTrout: UIButton!
    @IBOutlet weak var SteelheadTrout: UIButton!
    @IBOutlet weak var Walleye: UIButton!
    @IBOutlet weak var FishHelp: UIImageView!
    @IBOutlet weak var FishHelpTxt: UILabel!
    
    func setupgame()
    {
        //Set up "Congrats Screen Settings"
        textfield.isHidden = true
        playagain.isHidden = true
        home.isHidden = true
        playagain.isEnabled = false
        home.isEnabled = false
        
        //Randomize Fish Locations
        for i in 0...MAXFISH
        {
            repeat
            {
                goodplacement = true
                xvalue = Int.random(in: 0 ... XMAXBORDER)
                yvalue = Int.random(in: 0 ... YMAXBORDER)
            
                for j in 0...MAXFISH
                {
                    if((xvalue >= xlocations[j] - 250 && xvalue <= xlocations[j] + 250)
                        && (yvalue >= ylocations[j] - 75 && yvalue <= ylocations[j] + 75))
                    {
                        goodplacement = false
                    }
                }
            }while(!goodplacement)
            
            xlocations[i] = xvalue
            ylocations[i] = yvalue
        }
        
        //Assign Fish Locations
        AtlanticSalmon.frame.origin = CGPoint(x: xlocations[0], y: ylocations[0])
        BrookTrout.frame.origin = CGPoint(x: xlocations[1], y: ylocations[1])
        BrownTrout.frame.origin = CGPoint(x: xlocations[2], y: ylocations[2])
        ChinookSalmon.frame.origin = CGPoint(x: xlocations[3], y: ylocations[3])
        CohoSalmon.frame.origin = CGPoint(x: xlocations[4], y: ylocations[4])
        LakeSturgeon.frame.origin = CGPoint(x: xlocations[5], y: ylocations[5])
        LakeTrout.frame.origin = CGPoint(x: xlocations[6], y: ylocations[6])
        Muskellunge.frame.origin = CGPoint(x: xlocations[7], y: ylocations[7])
        RainbowTrout.frame.origin = CGPoint(x: xlocations[8], y: ylocations[8])
        SteelheadTrout.frame.origin = CGPoint(x: xlocations[9], y: ylocations[9])
        Walleye.frame.origin = CGPoint(x: xlocations[10], y: ylocations[10])
        
        //Determine which fish to find and then display information
        fish_to_find = Int.random(in: 0 ... MAXFISH)
        FishHelpTxt.text = "I am called \(fish[fish_to_find]). Can you find me?"
        FishHelp.image = UIImage(named: fishimages[fish_to_find])
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        setupgame()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //Actions

    @IBAction func Playagain(_ sender: Any) {
        setupgame()
    }
    
    //Atlantic Salmon
    @IBAction func SelectFish0(_ sender: Any) {
        if(fish_to_find == 0)
        {
            textfield.isHidden = false
            playagain.isHidden = false
            playagain.isEnabled = true
            home.isHidden = false
            home.isEnabled = true
        }
    }
    
    //Brook Trout
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
    
    //Brown Trout
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
    
    //Chinook Salmon
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
    
    //Coho Salmon
    @IBAction func SelectFish4(_ sender: Any) {
        if(fish_to_find == 4)
        {
            textfield.isHidden = false
            playagain.isHidden = false
            playagain.isEnabled = true
            home.isHidden = false
            home.isEnabled = true
        }
    }
    
    //Lake Sturgeon
    @IBAction func SelectFish5(_ sender: Any) {
        if(fish_to_find == 5)
        {
            textfield.isHidden = false
            playagain.isHidden = false
            playagain.isEnabled = true
            home.isHidden = false
            home.isEnabled = true
        }
    }
    
    //Lake Trout
    @IBAction func SelectFish6(_ sender: Any) {
        if(fish_to_find == 6)
        {
            textfield.isHidden = false
            playagain.isHidden = false
            playagain.isEnabled = true
            home.isHidden = false
            home.isEnabled = true
        }
    }
    
    //Muskellunge
    @IBAction func SelectFish7(_ sender: Any) {
        if(fish_to_find == 7)
        {
            textfield.isHidden = false
            playagain.isHidden = false
            playagain.isEnabled = true
            home.isHidden = false
            home.isEnabled = true
        }
    }
    
    //Rainbow Trout
    @IBAction func SelectFish8(_ sender: Any) {
        if(fish_to_find == 8)
        {
            textfield.isHidden = false
            playagain.isHidden = false
            playagain.isEnabled = true
            home.isHidden = false
            home.isEnabled = true
        }
    }
    
    //Steelhead Trout
    @IBAction func SelectFish9(_ sender: Any) {
        if(fish_to_find == 9)
        {
            textfield.isHidden = false
            playagain.isHidden = false
            playagain.isEnabled = true
            home.isHidden = false
            home.isEnabled = true
        }
    }
    
    //Walleye
    @IBAction func SelectFish10(_ sender: Any) {
        if(fish_to_find == 10)
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
    func initFishData()
    {
        //arrays to handle the hints
        let aSalmHints = ["I have black spots on my sides, but none on my tail","You can find me in the St. Mary’s River, Lake Huron, or even the St. Clair river,"]
        let bTroutHints = ["I have a long body and a large mouth","I am the state fish of Michigan!","I lay up to 5000 eggs"]
        let chinSalmonHints = ["I am present in all 5 great lakes","I am known as the King","My primary source of food is alewives"]
        let cohoSalmonHints = ["I have small black spots on my back and tail","I can be caught in Lake Michigan at anytime of the year","I started the Great Lakes salmon fishery"]
        let sturgHints = ["I primarily eat insect larvae, crayfish, snails, clam, and leeches","My typical lifespan is 55 years","I have four barbels on my snout"]
        let lkTroutHints = ["I have light spots on my back and tail","I can be found in all 5 Great Lakes","I prefer cold water"]
        let muskHints = ["I prefer slightly cooler water, but I can withstand water of up to 90 F","My jaw is shaped like a duck’s bill","I am primarily located in Western Upper Peninsula"]
        let rnbwTroutHints = ["I have a pink stripe on my body","I primarily live in clear-water lakes throughout Michigan"]
        let stlhdTroutHints = ["I am born in rivers, but spend most of my life in the great lakes","My life expectancy is 4 to 6 years"]
        let wllyHints = ["I spawn in rock shoals","I am a popular choice for sport fishing because I feed all year round"]
    
        //AN ARRAY OF ARRAYS!!!!!
        let fishes = [aSalmHints, bTroutHints,chinSalmonHints, cohoSalmonHints, sturgHints, lkTroutHints, muskHints, rnbwTroutHints, stlhdTroutHints, wllyHints]
    
        let targetFish = "";
    }
    func selectTarget()
    {
        for i in 0..11
        {
            //select a random number
            if (i == 0)
            {
                
            }
        }
    }
    
}
    

