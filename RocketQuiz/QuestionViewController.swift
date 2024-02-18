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
        print(sender.tag)
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
    }
}
