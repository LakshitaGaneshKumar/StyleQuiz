//
//  QuizView.swift
//  StyleQuiz
//
//  Created by Lakshita Ganesh Kumar on 6/5/25.
//

import SwiftUI

struct QuizView: View {
    var body: some View {
        VStack {
            Text("Quiz View")
        }
        .navigationTitle(Text("1/10"))
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarBackButtonHidden()
    }
}

#Preview {
    QuizView()
}
