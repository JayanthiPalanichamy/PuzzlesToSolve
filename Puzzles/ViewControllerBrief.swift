//
//  ViewControllerBrief.swift
//  Puzzles
//
//  Created by R.M.K. Engineering College  on 01/07/17.
//  Copyright © 2017 R.M.K Engineering college. All rights reserved.
//

import UIKit

class ViewControllerBrief: UIViewController {
    
    @IBOutlet weak var QuestionTitle: UILabel!
    
    
    @IBOutlet weak var QuestionExplanation: UILabel!
    
    
    @IBOutlet weak var image: UIImageView!
    var flag:Int=0;
    var questionChosen: Int = 0
    @IBAction func backPressed(_ sender: Any) {
        
    }
    
    @IBAction func answerPressed(_ sender: UIButton) {
        flag=1
        performSegue(withIdentifier: "answer", sender: sender)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(flag==1)
        {
        let viewControllerQues: ViewControllerAnswer = segue.destination as! ViewControllerAnswer
        
        let button: UIButton = sender as! UIButton
        let tagValue = button.tag
        
        viewControllerQues.ansChosen = tagValue
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        switch questionChosen {
        case 0:
            
            QuestionTitle.text = "The Waiter"
            QuestionExplanation.text="Three men in a cafe order a meal the total cost of which is $15. They each contribute $5. The waiter takes the money to the chef who recognizes the three as friends and asks the waiter to return $5 to the men.The waiter is not only poor at mathematics but dishonest and instead of going to the trouble of splitting the $5 between the three he simply gives them $1 each and pockets the remaining $2 for himself.Now, each of the men effectively paid $4, the total paid is therefore $12. Add the $2 in the waiters pocket and this comes to $14.....where has the other $1 gone from the original $15?"
            
           image.image = UIImage.init(named: "waiter.jpg")
            
        case 1:
            QuestionTitle.text = "The Boxes"
            QuestionExplanation.text="There are three boxes. One is labeled APPLES another is labeled ORANGES. The last one is labeled APPLES AND ORANGES. You know that each is labeled incorrectly. You may ask me to pick one fruit from one box which you choose.How can you label the boxes correctly?"
            
            image.image = UIImage.init(named: "images (1).jpeg")
            
        case 2:
            
            QuestionTitle.text = "The Cannibals"
            QuestionExplanation.text="Three cannibals and three anthropologists have to cross a river.The boat they have is only big enough for two people. The cannibals will do as requested, even if they are on the other side of the river, with one exception. If at any point in time there are more cannibals on one side of the river than anthropologists, the cannibals will eat them.What plan can the anthropologists use for crossing the river so they don't get eaten?Note: One anthropologist can not control two cannibals on land, nor can one anthropologist on land control two cannibals on the boat if they are all on the same side of the river. This means an anthropologist will not survive being rowed across the river by a cannibal if there is one cannibal on the other side."
            
            image.image = UIImage.init(named: "cannibal.jpeg")
        
            
        default:
            QuestionTitle.text="nothing";
            
            
            
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
