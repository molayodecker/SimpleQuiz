//
//  ViewController.swift
//  SimpleQuiz
//
//  Created by Molayo Decker on 16/09/2017.
//  Copyright © 2017 Big Nerd Ranch. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var questionLabel: UILabel!
    @IBOutlet var answerLabel: UILabel!
    
    
    let questions:[String] = [
        "What is 7+7?",
        "What is the Capital of Vermont?",
        "What is Cognac made from?"
    ]
    
    let answers:[String] = [
        "14",
        "Montpelier",
        "Grapes"
    ]
    
    var currentQuestionIndex = 0;
    
    @IBAction func showNextQuestion(_ sender:UIButton){
        currentQuestionIndex += 1
        if currentQuestionIndex == questions.count{
            currentQuestionIndex = 0
        }
        
        let question = questions[currentQuestionIndex]
        questionLabel.text = question
        answerLabel.text = "???"
    }
    
    @IBAction func showAnswer(_ sender: UIButton){
       let answer = answers[currentQuestionIndex]
        answerLabel.text = answer
        
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        questionLabel.text = questions[currentQuestionIndex]
    }
}

