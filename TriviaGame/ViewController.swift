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
    
    
    
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    //Popultates questions when the app loads
    func populateQuestions() {
        let question1 = TriviaQuestion(question: "What is Peter Quill's nickname?", answers: ["Ronan", "Starlord", "The Destroyer", "Eternity"], correctAnswerIndex: 2)
        let question2 = TriviaQuestion(question: "Which 3 characters came to help Vision and Scarlet Witch in Avengers: Infinity War?", answers: ["Spider-Man, Iron Man, & Doctor Strange", "Thor, Rocket, & Groot", "Captain America, Black Widow, & Falcon", "Black Panther, Okoye, & M'Baku"], correctAnswerIndex: 3)
        let question3 = TriviaQuestion(question: "What is the name of Thor's new hammer in Avenger: Infinity War?", answers: ["Mjolnir", "Nidavellir", "Vormir", "Stormbreaker"], correctAnswerIndex: 4)
        let question4 = TriviaQuestion(question: "In Avengers: Infinity War who is the last person shown fading to ash after Thanos completes the snap", answers: ["Spider-Man", "Black Panther", "Nick Fury", "Ant-Man"], correctAnswerIndex: 3)
        let question5 = TriviaQuestion(question: "What is the name of the song playing when the Guardians of the Galaxy are first shown in Avengers: Infinity War?", answers: ["Rubberband Man", "Hooked on a Feeling", "Come and Get Your Love", "Guardians Inferno"], correctAnswerIndex: 1)
        questions = [question1, question2, question3, question4, question5]
    }
    
    
}

