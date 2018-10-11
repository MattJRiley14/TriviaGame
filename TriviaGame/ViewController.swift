//
//  ViewController.swift
//  TriviaGame
//
//  Created by Matthew Riley on 10/10/18.
//  Copyright © 2018 Matthew Riley. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var answer1Button: UIButton!
    @IBOutlet weak var answer2Button: UIButton!
    @IBOutlet weak var answer3Button: UIButton!
    @IBOutlet weak var answer4Button: UIButton!
    
    //Current question being answered
    var currentQuestion: TriviaQuestion! {
        //Property Observer for currentQuestion
        didSet {
            //Whenever a new currentQuestion is set, update the game UI to reflect that new question
            questionLabel.text = currentQuestion.question
            answer1Button.setTitle(currentQuestion.answers[0], for: .normal)
            answer1Button.setTitle(currentQuestion.answers[1], for: .normal)
            answer1Button.setTitle(currentQuestion.answers[2], for: .normal)
            answer1Button.setTitle(currentQuestion.answers[3], for: .normal)
        }
    }

    //Array of questions for the Trivia Game
    var questions: [TriviaQuestion] = []
    
    //This array will hold the questions that have been answered
    var questionsPlaceholder: [TriviaQuestion] = []
    
    //Sets score to 0
    var score = 0 {
        //Property Observer for score
        didSet {
            scoreLabel.text = "\(score)"
        }
    }
    
    //This will store the index of the current question
    var randomIndex: Int!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        populateQuestions()
        getNewQuestion()
    }

    //Popultates questions when the app loads
    func populateQuestions() {
        let question1 = TriviaQuestion(question: "What is Peter Quill's nickname?", answers: ["Ronan", "Starlord", "The Destroyer", "Eternity"], correctAnswerIndex: 1)
        let question2 = TriviaQuestion(question: "Which 3 characters came to help Vision and Scarlet Witch in Avengers: Infinity War?", answers: ["Spider-Man, Iron Man, & Doctor Strange", "Thor, Rocket, & Groot", "Captain America, Black Widow, & Falcon", "Black Panther, Okoye, & M'Baku"], correctAnswerIndex: 2)
        let question3 = TriviaQuestion(question: "What is the name of Thor's new hammer in Avenger: Infinity War?", answers: ["Mjolnir", "Nidavellir", "Vormir", "Stormbreaker"], correctAnswerIndex: 3)
        let question4 = TriviaQuestion(question: "In Avengers: Infinity War who is the last person shown fading to ash after Thanos completes the snap", answers: ["Spider-Man", "Black Panther", "Nick Fury", "Ant-Man"], correctAnswerIndex: 2)
        let question5 = TriviaQuestion(question: "What is the name of the song playing when the Guardians of the Galaxy are first shown in Avengers: Infinity War?", answers: ["Rubberband Man", "Hooked on a Feeling", "Come and Get Your Love", "Guardians Inferno"], correctAnswerIndex: 0)
        questions = [question1, question2, question3, question4, question5]
    }
    
    //Gets a random question from array of questions
    func getNewQuestion() {
        if questions.count > 0 {
            //Get a random index from 0 to 1 less then the amount of elements in the questions array
            randomIndex = Int(arc4random_uniform(UInt32(questions.count)))
            //Set currentQuestion equal to the question that is at the random index in the questions array
            currentQuestion = questions[randomIndex]
        } else {
            //If there are no questions left, then reset the game
            resetGame()
        }
    }
    
    func resetGame() {
        //Reset the score
        score = 0
        //Repopulate the questions array with the questions in the placeholder
        if !questions.isEmpty {
            //If we have questions remaining, append all of the remaining questions to the placeholder array
            questionsPlaceholder.append(contentsOf: questions)
        }
        questions = questionsPlaceholder
        questionsPlaceholder.removeAll()
        //Get a new question
        getNewQuestion()
    }
    
    @IBAction func answerButtonTapped(_ sender: UIButton) {
    }
    
    
    
    
    
    
}

