//
//  ScoreViewController.swift
//  RocketQuiz
//
//  Created by Rhuan Carvalho on 23/02/24.
//

import UIKit

class ScoreViewController: UIViewController {

    var score: Int?
    @IBOutlet weak var scoreResultLabel: UILabel!
    @IBOutlet weak var scorePercentageLabel: UILabel!
    @IBOutlet weak var restartQuizButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupLayout()
        setScore()
    }
    
    func setupLayout() {
        navigationItem.hidesBackButton = true
        restartQuizButton.layer.cornerRadius = 12.0
    }
    
    func setScore() {
        guard let score = score else { return }
        scoreResultLabel.text = "You got \(score) out of \(questions.count) questions right"
        
        let percentage = (score * 100) / questions.count
        scorePercentageLabel.text = "Final percentage: \(percentage)%"
    }
}
