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
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    @IBAction func submitButtonTapped(_ sender: Any) {
        
    }
    
}
