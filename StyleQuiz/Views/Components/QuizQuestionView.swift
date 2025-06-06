//
//  QuizQuestionView.swift
//  StyleQuiz
//
//  Created by Lakshita Ganesh Kumar on 6/5/25.
//

import SwiftUI

struct QuizQuestionView: View {
    
    @State var question: String
    
    init(question: String) {
        self.question = question
    }
    
    var body: some View {
        Text(question)
            .font(.custom("Maleah-Bold", size: 24))
    }
}

#Preview {
    QuizQuestionView(question: "Test Question")
}
