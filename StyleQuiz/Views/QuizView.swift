//
//  QuizView.swift
//  StyleQuiz
//
//  Created by Lakshita Ganesh Kumar on 6/5/25.
//

import SwiftUI

struct QuizView: View {
    
    @StateObject private var viewModel = QuizViewModel()
    
    var body: some View {
        
        VStack {
            if viewModel.quizComplete {
                NavigationLink(destination: ResultView()) {
                    BlackButtonView(text: "See my results...")
                }
            } else {
                QuizQuestionView(question: viewModel.currentQuestion?.question ?? "Test Question \(viewModel.currentQuestionIndex + 1)")
                
                Button {
                    viewModel.nextQuestion()
                } label: {
                    BlackButtonView(text: "Next")
                }
            }
        }
        .navigationTitle(Text("\(viewModel.currentQuestionIndex + 1)/\(viewModel.quiz.questions.count)"))
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarBackButtonHidden()
        .navigationBarHidden(Bool(viewModel.quizComplete))
    }
}

#Preview {
    QuizView()
}
