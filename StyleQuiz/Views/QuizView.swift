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
            QuizQuestionView(question: viewModel.currentQuestion?.question ?? "")
        }
        .navigationTitle(Text("1/10"))
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarBackButtonHidden()
    }
}

#Preview {
    QuizView()
}
