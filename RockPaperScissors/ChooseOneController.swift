//
//  ViewController.swift
//  RockPaperScissors
//
//  Created by Vedhavyas Singareddi on 20/04/16.
//  Copyright © 2016 Vedhavyas Singareddi. All rights reserved.
//

import UIKit

class ChooseOneController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func paper(){
        let resultController = self.storyboard?.instantiateViewControllerWithIdentifier("resultController") as! ResultViewController
        resultController.userOption = ResultViewController.Options.Paper
        self.presentViewController(resultController, animated: true, completion: nil)
    }
    
    @IBAction func scisscors(){
        self.performSegueWithIdentifier("scisscorsSegue", sender: self)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        var userOption:Int
        if segue.identifier! == "scisscorsSegue"{
            userOption = ResultViewController.Options.Scissors
        }else{
            userOption = ResultViewController.Options.Rock
        }
        
        let resultViewController = segue.destinationViewController as! ResultViewController
        resultViewController.userOption = userOption
    }


}

