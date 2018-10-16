//
//  UserCreatedQuestion.swift
//  TriviaGame
//
//  Created by Matthew Riley on 10/12/18.
//  Copyright © 2018 Matthew Riley. All rights reserved.
//

import UIKit

class UserCreatedQuestion: UIViewController {
    
    @IBOutlet weak var userQuestionTextField: UITextField!
    @IBOutlet weak var userAnswer1TextField: UITextField!
    @IBOutlet weak var userAnswer2TextField: UITextField!
    @IBOutlet weak var userAnswer3TextField: UITextField!
    @IBOutlet weak var userAnswer4TextField: UITextField!
    @IBOutlet weak var userCorrectAnswerSegmentedControl: UISegmentedControl!
    
    var newQuestion: TriviaQuestion!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    // MARK: - Navigation
    
    //     In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        /*
         Get the new view controller using segue.destination.
         
         Pass the selected object to the new view controller.
         */
        if let destination = segue.destination as? ViewController, segue.identifier == "unwindToQuizScreen" {
            //Append the new question to the questions array
            destination.questions.append(newQuestion)
        }
    }
    
    //Error shows when user doesn't fill out all fields
    func showErrorAlert() {
        let errorAlert = UIAlertController(title: "Error", message: "Please enter text in all fields", preferredStyle: .actionSheet)
        let dismissAction = UIAlertAction(title: "Close", style: .default, handler: nil)
        errorAlert.addAction(dismissAction)
        self.present(errorAlert, animated: true, completion: nil)
    }
    
    
    @IBAction func submitButtonTapped(_ sender: Any) {
        //Verifies each of the text fields as text
        guard let question = userQuestionTextField.text, !question.isEmpty,
        let answer1 = userAnswer1TextField.text, !answer1.isEmpty,
        let answer2 = userAnswer2TextField.text, !answer2.isEmpty,
        let answer3 = userAnswer3TextField.text, !answer3.isEmpty,
        let answer4 = userAnswer4TextField.text, !answer4.isEmpty else {
            showErrorAlert()
                return
        }
        
        newQuestion = TriviaQuestion(question: question, answers: [answer1, answer2, answer3, answer4], correctAnswerIndex: userCorrectAnswerSegmentedControl.selectedSegmentIndex)
        
        //Permforms segue back to main screen
        self.performSegue(withIdentifier: "unwindToQuizScreen", sender: self)
    }
}





