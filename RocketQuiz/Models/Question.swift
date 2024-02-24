//
//  Question.swift
//  RocketQuiz
//
//  Created by Rhuan Carvalho on 18/02/24.
//

import Foundation

struct Question {
    var title: String
    var answers: [String]
    var correctAnswer: Int
}

let questions = [
    Question(title: "What powerful artifact gifted to Aragorn by Elrond once belonged to Isildur, and helped him defeat Sauron in the Second Age?", answers: ["Andúril, Flame of the West", "The One Ring", "Narsil, sword of Elendil"], correctAnswer: 0),
    Question(title: "In which city does Frodo receive the One Ring from Bilbo Baggins?", answers: ["Bree", "Rivendell", "The Shire"], correctAnswer: 2),
    Question(title: "Who is the leader of the Rohirrim, initially reluctant to join the forces against Sauron?", answers: ["Gandalf", "Aragorn", "King Théoden"], correctAnswer: 2)
    
]
