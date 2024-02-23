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
            sender.backgroundColor = UIColor(red: 11/255, green: 161/255, blue: 53/255, alpha: 1)
        } else {
            sender.backgroundColor = UIColor(red: 211/255, green: 17/255, blue: 17/255, alpha: 1)
        }
        
        if questionNumber < questions.count - 1 {
            questionNumber += 1
            Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(setQuestion), userInfo: nil, repeats: false)
        } else {
            navigateToScoreView()
        }
    }
    
    func navigateToScoreView() {
        performSegue(withIdentifier: "goToScoreView", sender: nil)
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
    
    @objc func setQuestion() {
        questionTitleLabel.text = questions[questionNumber].title
        
        for answerButton in answerButtons {
            let answerButtonTitle = questions[questionNumber].answers[answerButton.tag]
            answerButton.setTitle(answerButtonTitle, for: .normal)
            answerButton.backgroundColor = UIColor(red: 52/255, green: 95/255, blue: 108/255, alpha: 1)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let scoreViewController = segue.destination as? ScoreViewController
        else { return }
        
        scoreViewController.score = score
    }
}
