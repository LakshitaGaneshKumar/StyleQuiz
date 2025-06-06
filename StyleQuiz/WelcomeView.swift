//
//  ContentView.swift
//  StyleQuiz
//
//  Created by Lakshita Ganesh Kumar on 6/5/25.
//

import SwiftUI

struct WelcomeView: View {
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
                    Text("Start Quiz")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .frame(width: 200, height: 50)
                        .background(Color.black)
                        .cornerRadius(10)
                        .shadow(radius: 5)
                        .padding()
                }
            }
            .padding()
        }
    }
}

#Preview {
    WelcomeView()
}
