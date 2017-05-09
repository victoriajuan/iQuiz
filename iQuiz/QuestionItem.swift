//
//  QuestionItem.swift
//  iQuiz
//
//  Created by Vicky Juan on 5/9/17.
//  Copyright © 2017 Victoria Juan. All rights reserved.
//

import Foundation

class QuestionItem {
    var question: String
    var answers: [String]
    var correct: String
    
    init(Question question: String, Answers answers: [String], Correct correct: String) {
        self.question = question
        self.answers = answers;
        self.correct = correct
    }
}
