//
//  QuizViewModel.swift
//  StyleQuiz
//
//  Created by Lakshita Ganesh Kumar on 6/5/25.
//

import Foundation
import SwiftUI

class QuizViewModel: ObservableObject {
    // TODO
    @Published var quiz = Quiz()
    @Published var currentQuestionIndex: Int = 0
    @Published var currentQuestion: Question?
    @Published var selectedAnswerIndices: [Int] = []
    @Published var quizComplete: Bool = false
    
    func startQuiz() {
        currentQuestionIndex = 0
        currentQuestion = quiz.questions[currentQuestionIndex]
    }
    
    func selectAnswer(at index: Int) {
        selectedAnswerIndices.append(index)
    }
    
    func nextQuestion() {
        quiz.questions[currentQuestionIndex].selectedAnswerIndices = selectedAnswerIndices
        currentQuestionIndex += 1
        currentQuestion = quiz.questions[currentQuestionIndex]
        checkQuizCompletion()
    }
    
    private func checkQuizCompletion() {
        if currentQuestionIndex == quiz.questions.count - 1 {
            quizComplete = true
        }
    }
}
