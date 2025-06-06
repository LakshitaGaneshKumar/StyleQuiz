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
        
        NavigationStack {
            VStack {
                if viewModel.quizComplete {
                    NavigationLink(destination: ResultView()) {
                        EmptyView()
                    }
                } else {
                    QuizQuestionView(question: viewModel.currentQuestion?.question ?? "Test Question \(viewModel.currentQuestionIndex + 1)")
                }
            }
            .navigationTitle(Text("\(viewModel.currentQuestionIndex + 1)/\(viewModel.quiz.questions.count)"))
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarBackButtonHidden()
        }
    }
}

#Preview {
    QuizView()
}
