//
//  TriviaQuestion.swift
//  TriviaGame
//
//  Created by Matthew Riley on 10/11/18.
//  Copyright © 2018 Matthew Riley. All rights reserved.
//

import Foundation

class TriviaQuestion {
    //Stores the question as a string
    let question: String
    
    //Stores the answers as an array of strings
    let answers: [String]
    
    //Stores the index of the correct answer from the answers array
    let correctAnswerIndex: Int
    
    //Computed property that returns the correct answer for the question
    var correctAnswer: String {
        return answers[correctAnswerIndex]
    }
    
    //Initializer for the class
    init(question: String, answers: [String], correctAnswerIndex: Int) {
        self.question = question
        self.answers = answers
        self.correctAnswerIndex = correctAnswerIndex
    }
}


