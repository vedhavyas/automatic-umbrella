//
//  ResultViewController.swift
//  RockPaperScissors
//
//  Created by Vedhavyas Singareddi on 20/04/16.
//  Copyright © 2016 Vedhavyas Singareddi. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    struct Options {
        static let Paper: Int = 1
        static let Rock: Int = 2
        static let Scissors: Int = 3
    }
    
    var userOption: Int?
    var systemOption = Int(arc4random_uniform(3)+1)
    
    @IBOutlet var imageView: UIImageView!
    @IBOutlet var label: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        showResult()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func dismiss(){
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    func showResult() {
        if userOption == systemOption{
            imageView.image = UIImage(named: "itsATie")
            label.text = "Tie!!"
        } else if userOption == Options.Paper && systemOption == Options.Rock{
            imageView.image = UIImage(named: "PaperCoversRock")
            label.text = "You Win!"
        } else if userOption == Options.Rock && systemOption == Options.Scissors{
            imageView.image = UIImage(named: "RockCrushesScissors")
            label.text = "You Win!"
        } else if userOption == Options.Scissors && systemOption == Options.Paper{
            imageView.image = UIImage(named: "ScissorsCutPaper")
            label.text = "You Win!"
        } else if systemOption == Options.Scissors{
            imageView.image = UIImage(named: "ScissorsCutPaper")
            label.text = "You Lost!"
        } else if systemOption == Options.Rock{
            imageView.image = UIImage(named: "RockCrushesScissors")
            label.text = "You Lost!"
        } else{
            imageView.image = UIImage(named: "PaperCoversRock")
            label.text = "You Lost!"
        }
    }
    
}
