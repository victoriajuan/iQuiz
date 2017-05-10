//
//  AnswerViewController.swift
//  iQuiz
//
//  Created by Vicky Juan on 5/9/17.
//  Copyright © 2017 Victoria Juan. All rights reserved.
//

import UIKit

class AnswerViewController: UIViewController {
    @IBOutlet weak var questionText: UILabel!
    @IBOutlet weak var correctAnswer: UILabel!
    @IBOutlet weak var score: UILabel!
    
    var quizObject: QuestionItem?
    var answerSelect: String?
    var correctness: Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        
        questionText.text = quizObject?.question
        correctAnswer.text = quizObject?.correct
        if answerSelect! == correctAnswer.text {
            correctness += 1
        }
        score.text = "\(correctness) out of  \(1)"

        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "onGoingSegue"{
            let QuestionSegue = segue.destination as! QuestionViewController
            QuestionSegue.quizObject = self.quizObject
        } else {
            let FinishSegue = segue.destination as! FinishViewController
            FinishSegue.correctness = self.correctness
        }
    }
    
    @IBAction func SwitchSegue(_ sender: Any) {
            performSegue(withIdentifier: "unGoingSegue", sender: self)
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
