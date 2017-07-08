//
//  ViewControllerUser.swift
//  PuzzlesToSolve
//
//  Created by R.M.K. Engineering College  on 08/07/17.
//  Copyright © 2017 R.M.K Engineering college. All rights reserved.
//

import UIKit

class ViewControllerUser: UIViewController {
    var questionChosen:Int=0;
    var ans:String=""
    var hint:String=""
    var flag:Int=0
    @IBOutlet weak var answer: UITextField!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let viewControllerQues: ViewControllerUser = segue.destination as! ViewControllerUser
        
        if(questionChosen>13){
            questionChosen=0
        }
        let tagValue=questionChosen
        viewControllerQues.questionChosen = tagValue+1
        
        
        
    }

    @IBOutlet weak var scorevar: UILabel!
   
    @IBAction func nextPress(_ sender: UIButton) {
        performSegue(withIdentifier: "nextQues", sender: sender)
    }
 
    
    @IBAction func checkPressed(_ sender: UIButton) {
        print("YES")
        if(flag==0){
            print (1)
            if(answer.text==ans)
            {
               
                let alert = UIAlertController(title: "Yes", message: "You are right!" , preferredStyle: UIAlertControllerStyle.alert)
                
                // add an action (button)
                alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
                
                // show the alert
                self.present(alert, animated: true, completion: nil)
                
            }
            else{
                let alert = UIAlertController(title: "No", message: "Sorry ,Try again ", preferredStyle: UIAlertControllerStyle.alert)
                
                // add an action (button)
                alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
                
                // show the alert
                self.present(alert, animated: true, completion: nil)
            }
        }

    }
    @IBOutlet weak var ques: UILabel!
    @IBAction func ansPressed(_ sender: Any) {
         flag=1
        let alert = UIAlertController(title: "Answer", message: ans, preferredStyle: UIAlertControllerStyle.alert)
        
        // add an action (button)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
        
        // show the alert
        self.present(alert, animated: true, completion: nil)
    }

    @IBAction func hintPressed(_ sender: Any) {
       
        let alert = UIAlertController(title: "Hint", message: hint, preferredStyle: UIAlertControllerStyle.alert)
        
        // add an action (button)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
        
        // show the alert
        self.present(alert, animated: true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        switch questionChosen {
        case 0:
            
            
            ques.text="Who makes it, has no need of it.Who buys has no use for it.Who uses it can neither see nor feel it.What is it?"
            ans="Coffin "
            hint="OLDIE BUT A GOODIE"
            
            
        case 1:
            ques.text="What can travel around the world while staying in a corner?"
            ans="Stamp"
            hint="EASY RIDDLE"
            
        case 2:
            
            ques.text="Paul's height is six feet, he's an assistant at a butcher's shop, and wears size 9 shoes. What does he weigh?"
            ans="Stamp"
            hint="EASY RIDDLE"
        case 3:
            
            
            ques.text="There was a green house. Inside the green house there was a white house. Inside the white house there was a red house. Inside the red house there were lots of babies. What is it?"
            ans="Stamp"
            hint="EASY RIDDLE"
            
        case 4:
            ques.text="What kind of room has no doors or windows?"
            ans="Stamp"
            hint="EASY RIDDLE"
        case 5:
            
            
            ques.text="Forward I am heavy, but backward I am not. What am I?"
            ans="Stamp"
            hint="EASY RIDDLE"
            
            
        case 6:
            ques.text="He has married many women, but has never been married. Who is he?"
            ans="Stamp"
            hint="EASY RIDDLE"
            

        case 7:
            
            
            ques.text="Outside a room there are three light switches. One of switch is connected to a light bulb inside the room.Each of the three switches can be either 'ON' or 'OFF'.You are allowed to set each switch the way you want it and then enter the room(note: you can enter the room only once)Your task is to then determine which switch controls the bulb ?? "
            ans="Stamp"
            hint="EASY RIDDLE"
            
            
        case 8:
            ques.text="n a contest, four fruits (an apple, a banana, an orange, and a pear) have been placed in four closed boxes (one fruit per box). People may guess which fruit is in which box. 123 people participate in the contest. When the boxes are opened, it turns out that 43 people have guessed none of the fruits correctly, 39 people have guessed one fruit correctly, and 31 people have guessed two fruits correctly.How many people have guessed three fruits correctly, and how many people have guessed four fruits correctly "
            ans="Stamp"
            hint="EASY RIDDLE"

        case 9:
            
            
            ques.text="Who makes it, has no need of it.Who buys has no use for it.Who uses it can neither see nor feel it.What is it?"
            ans="Stamp"
            hint="EASY RIDDLE"
            
        case 10:
            ques.text="What can travel around the world while staying in a corner?"
            ans="Stamp"
            hint="EASY RIDDLE"

        case 11:
            
            
            ques.text="Who makes it, has no need of it.Who buys has no use for it.Who uses it can neither see nor feel it.What is it?"
            ans="Stamp"
            hint="EASY RIDDLE"
            
        case 12:
            ques.text="What can travel around the world while staying in a corner?"
            ans="Stamp"
            hint="EASY RIDDLE"
        case 13:
            
            
            ques.text="Who makes it, has no need of it.Who buys has no use for it.Who uses it can neither see nor feel it.What is it?"
            ans="Stamp"
            hint="EASY RIDDLE"
            
        case 14:
            ques.text="What can travel around the world while staying in a corner?"
            ans="Stamp"
            hint="EASY RIDDLE"

            
        default:
            ques.text="nothing";
            ans="Stamp"
            hint="EASY RIDDLE"
            
            
        }
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
