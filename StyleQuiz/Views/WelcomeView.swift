//
//  ContentView.swift
//  StyleQuiz
//
//  Created by Lakshita Ganesh Kumar on 6/5/25.
//

import SwiftUI

struct WelcomeView: View {
    
    @StateObject var viewModel = QuizViewModel()
        
    var body: some View {
        
        NavigationView {
            VStack {
                
                Spacer()
                
                Text("Let's discover your current style...")
                    .font(.custom("Maleah-Oblique", size: 42))
                    .multilineTextAlignment(.center)
                    .padding()
                
                Spacer()
                
                NavigationLink(destination: QuizView()) {
                    BlackButtonView(text: "Start Quiz")
                }
            }
            .padding()
        }
    }
}

#Preview {
    WelcomeView()
        .environmentObject(QuizViewModel())
}
