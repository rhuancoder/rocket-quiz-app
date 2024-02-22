//
//  QuestionViewController.swift
//  RocketQuiz
//
//  Created by Rhuan Carvalho on 17/02/24.
//

import UIKit

class QuestionViewController: UIViewController {
    var score = 0
    var questionNumber = 0
    
    @IBOutlet weak var questionTitleLabel: UILabel!
    @IBOutlet var answerButtons: [UIButton]!
    
    @IBAction func answerPressedButton(_ sender: UIButton) {
        let userAnswerRight = questions[questionNumber].correctAnswer == sender.tag
        
        if userAnswerRight {
            score += 1
            print("The user answered correctly!")
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupLayout()
        setQuestion()
    }
    
    func setupLayout() {
        navigationItem.hidesBackButton = true
        questionTitleLabel.numberOfLines = 0
        questionTitleLabel.textAlignment = .center
        
        for answerButton in answerButtons {
            answerButton.layer.cornerRadius = 12.0
        }
    }
    
    func setQuestion() {
        questionTitleLabel.text = questions[questionNumber].title
        
        for answerButton in answerButtons {
            let answerButtonTitle = questions[questionNumber].answers[answerButton.tag]
            answerButton.setTitle(answerButtonTitle, for: .normal)
        }
    }
}
