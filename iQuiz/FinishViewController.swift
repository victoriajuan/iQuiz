//
//  FinishViewController.swift
//  iQuiz
//
//  Created by Vicky Juan on 5/9/17.
//  Copyright © 2017 Victoria Juan. All rights reserved.
//

import UIKit

class FinishViewController: UIViewController {
    @IBOutlet weak var FinalText: UILabel!
    @IBOutlet weak var finalScore: UILabel!
    
    var correctness: Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if correctness == 0 {
            FinalText.text = "Keep doing"
        }else {
            FinalText.text = "Excellent"
        }
        
        finalScore.text = "\(correctness) out of  \(1)"

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
