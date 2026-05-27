//
//  GameManager.swift
//  Country Flag Game
//
//  Created by gabrielle on 1/12/26.
//

import Foundation
import SwiftUI

@Observable
class GameManager {
    
    var questions = [Question] ()
    private(set) var index = 0
    private(set) var playingGame = false
    private(set) var answerSelected = false
    private(set) var country = ""
    private(set) var answerChoices = [Answer] ()
    private(set) var progress: CGFloat = 0
    private(set) var score: Int = 0
    init() {
        reset()
    }
    func reset () {
        questions = questions.shuffled()
        index = 0
        score = 0
        progress = 0.0
        playingGame = true
    }
    func loadQuestions() {
        let countries = Data().countries
        if countries.count < 4 {
            print("There  are only \(countries.count) countries listed in Data (must be at least 4) ")
        }
        else {
            questions.removeAll()
            for country in countries {
                if UIImage(named: country) != nil {
                    var incorrectAnswer = [String]()
                    while incorrectAnswer.count < 3 {
                        if let randomCountry = countries.randomElement(), randomCountry != country, !incorrectAnswer.contains(randomCountry) { incorrectAnswer.append(randomCountry)
                        }
                    }
                    questions.append(Question(correctAnswer: Answer(text: country, isCorrect: true), incorrectAnswers: [
                        Answer(text: incorrectAnswer[0], isCorrect: false),
                        Answer(text: incorrectAnswer[1], isCorrect: false),
                        Answer(text: incorrectAnswer[2], isCorrect: false)
                    ]))
                }
                else {
                    print("\(country) image cannot be found")
                }
            }
        }
    }
}
