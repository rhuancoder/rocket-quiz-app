//
//  ViewController.swift
//  RocketQuiz
//
//  Created by Rhuan Carvalho on 14/02/24.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var startQuizButton: UIButton!
    
    @IBAction func pressedButton(_ sender: Any) {
        print("The button has been pressed!")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }

    func setupView() {
        navigationItem.hidesBackButton = true
        startQuizButton.layer.cornerRadius = 12.0
    }
}

