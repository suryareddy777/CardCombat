 //
//  ViewController.swift
//  CardCombat
//
//  Created by Surya Reddy on 06/10/20.
//

import UIKit

class ViewController: UIViewController {
 

    @IBOutlet weak var leftimageview: UIImageView!

    @IBOutlet weak var rightimageview: UIImageView!
    
    @IBOutlet weak var leftscorelabel: UILabel!
    
    @IBOutlet weak var rightscorelabel: UILabel!
    
    var leftscore = 0
    var rightscore = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }

    @IBAction func Dealtapped(_ sender: Any) {
        
        let leftnumber = Int.random(in: 2...14)
        let rightnumber = Int.random(in: 2...14)
       
        leftimageview.image = UIImage(named: "card\(leftnumber)")
        
        rightimageview.image = UIImage(named: "card\(rightnumber)")
        
        if leftnumber > rightnumber {
            
            leftscore += 1
            
            leftscorelabel.text = String(leftscore)
        
        }
        
        
        else if leftnumber < rightnumber {
            
            rightscore += 1
            
            rightscorelabel.text = String(rightscore)
        
        }
    }
    
}

