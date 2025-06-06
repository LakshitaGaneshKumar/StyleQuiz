//
//  NextButton.swift
//  StyleQuiz
//
//  Created by Lakshita Ganesh Kumar on 6/5/25.
//

import SwiftUI

struct BlackButtonView: View {
    
    var text: String
    
    var body: some View {
        Text(text)
            .font(.headline)
            .foregroundColor(.white)
            .padding()
            .frame(width: 200, height: 50)
            .background(Color.black)
            .cornerRadius(10)
    }
}

#Preview {
    BlackButtonView(text: "Black Button")
}
