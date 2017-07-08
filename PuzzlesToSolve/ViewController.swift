//
//  ViewController.swift
//  PuzzlesToSolve
//
//  Created by R.M.K. Engineering College  on 08/07/17.
//  Copyright © 2017 R.M.K Engineering college. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var quesNo:Int=0;
    
    
    @IBAction func startPressed(_ sender: UIButton) {
         performSegue(withIdentifier: "question", sender: sender)
            }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            
        let viewControllerQues: ViewControllerUser = segue.destination as! ViewControllerUser
        
        let tagValue = Int(arc4random_uniform(13) )
        
        viewControllerQues.questionChosen = tagValue

    
    
    }
    override func viewDidLoad() {
        super.viewDidLoad()
       
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

