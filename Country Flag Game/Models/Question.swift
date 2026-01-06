//
//  Question.swift
//  Country Flag Game
//
//  Created by gabrielle on 1/6/26.
//
import Foundation

struct Answer: Identifiable {
    var id = UUID()
    let text: String
    var iscorrect: Bool
}

struct Question: Identifiable {
    var id = UUID()
    let correctAnswer: Answer
    let incorrectAnswers: [Answer]
}
