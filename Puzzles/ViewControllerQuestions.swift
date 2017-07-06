//
//  ViewControllerQuestions.swift
//  Puzzles
//
//  Created by R.M.K. Engineering College  on 01/07/17.
//  Copyright © 2017 R.M.K Engineering college. All rights reserved.
//

import UIKit

class ViewControllerQuestions: UIViewController {

    @IBAction func waiterPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "question", sender: sender)
    }
    
    @IBAction func boxesPressed(_ sender: UIButton) {
         performSegue(withIdentifier: "question", sender: sender)
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func cannibalsPressed(_ sender: Any) {
         performSegue(withIdentifier: "question", sender: sender)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let viewControllerQues: ViewControllerBrief = segue.destination as! ViewControllerBrief
        
        let button: UIButton = sender as! UIButton
        let tagValue = button.tag
        
       viewControllerQues.questionChosen = tagValue
        
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
