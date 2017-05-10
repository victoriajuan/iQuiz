//
//  QuestionViewController.swift
//  iQuiz
//
//  Created by Vicky Juan on 5/9/17.
//  Copyright © 2017 Victoria Juan. All rights reserved.
//

import UIKit

class QuestionViewController: UIViewController {
    var quizObject: QuestionItem?
    var answerSelect: String?

    @IBOutlet weak var questionText: UILabel!
    @IBOutlet weak var answer1: UIButton!
    @IBOutlet weak var answer2: UIButton!
    @IBOutlet weak var answer3: UIButton!
    @IBOutlet weak var answer4: UIButton!
    @IBOutlet weak var summitButton: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        questionText.text = quizObject?.question
        answer1.setTitle(quizObject?.answers[0], for: .normal)
        answer2.setTitle(quizObject?.answers[1], for: .normal)
        answer3.setTitle(quizObject?.answers[2], for: .normal)
        answer4.setTitle(quizObject?.answers[3], for: .normal)
        

        // Do any additional setup after loading the view.
    }
    
    @IBAction func checkCorrectness(_ sender: UIButton) {
        summitButton.isEnabled = true
        answerSelect = sender.titleLabel?.text
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let AnswerSegue = segue.destination as! AnswerViewController
        AnswerSegue.quizObject = self.quizObject
        AnswerSegue.answerSelect = self.answerSelect
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
