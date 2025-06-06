//
//  ResultView.swift
//  StyleQuiz
//
//  Created by Lakshita Ganesh Kumar on 6/5/25.
//

import SwiftUI

struct ResultView: View {
    
    @EnvironmentObject var viewModel: QuizViewModel
    
    var body: some View {
        
        ScrollView {
            VStack {
                ForEach(0..<viewModel.quiz.questions.count, id: \.self) { index in
                    Text("\(viewModel.quiz.questions[index].question)")
                        .font(.headline)
                        .padding()
                    
                    ForEach(viewModel.quiz.questions[index].selectedAnswerIndices, id: \.self) { choiceIndex in
                        Text("\(viewModel.quiz.questions[index].choices[choiceIndex])")
                    }
                }
            }
            .navigationTitle(Text("Results"))
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarBackButtonHidden()
            .multilineTextAlignment(.center)
        }
    }
}

#Preview {
    ResultView()
        .environmentObject(QuizViewModel())
}
