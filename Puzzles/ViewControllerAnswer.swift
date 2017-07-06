//
//  ViewControllerAnswer.swift
//  Puzzles
//
//  Created by R.M.K. Engineering College  on 01/07/17.
//  Copyright © 2017 R.M.K Engineering college. All rights reserved.
//

import UIKit

class ViewControllerAnswer: UIViewController {
    
    
    @IBOutlet weak var ans: UILabel!
    var ansChosen: Int = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        switch ansChosen {
        case 0:
            
            
            ans.text="The payments should equal the receipts. It does not make sense to add what was paid by the men ($12) to what was received from that payment by the waiter ($2)Although the initial bill was $15 dollars, one of the five dollar notes gets changed into five ones. The total the three men ultimately paid is $12, as they get three ones back. So from the $12 the men paid, the owner receives $10 and the waiter receives the $2 difference. $15 - $3 = $10 + $2."
            
            
        case 1:
            ans.text="Pick from the one labeled Apples & Oranges. This box must contain either only apples or only oranges.E.g. if you find an Orange, label the box Orange, then change the Oranges box to Apples, and the Apples box to Apples & Oranges."
            
        case 2:
            
            ans.text="First, two cannibals go across to the other side of the river, then the rower gets called back. Next, the rowing cannibal takes the second across and then gets called back, so now there are two cannibals on the far side.Two anthropologists go over, then one anthropologist accompanies one cannibal back, so now there is one anthropologist and one cannibal on the far side.The last two anthropologists go over to the far side, so now all the anthropologists are across the other side, along with the boat and one cannibal.In two trips, the cannibal on the far side takes the boat and ferries the other two cannibals across the river."
            
        default:
            ans.text="nothing";
            
            
            
        }
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
