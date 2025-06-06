//
//  QuizModel.swift
//  StyleQuiz
//
//  Created by Lakshita Ganesh Kumar on 6/5/25.
//

import Foundation

struct Question: Identifiable {
    var id: Int
    var question: String
    var description: String
    var choices: [String]
    var selectedChoice: String?
}

class Quiz: ObservableObject {
    static var questions: [Question] = [
        Question(
            id: 0,
            question: "How old are you?",
            description: "We ask this to ensure we provide a personalized and safe space for you.",
            choices: ["Under 18", "18-24", "25-34", "35-44", "45-54", "55-64", "65+"]),
        
        Question(
            id: 1,
            question: "Where do you primarily shop?",
            description: "This will get you started on your style journey. Choose the option that fits best.",
            choices: ["Women's", "Men's", "Both"]),
        
        Question(
            id: 2,
            question: "How do you want to feel in your outfits?",
            description: "We wanna help you feel the way YOU want to feel, no matter what's trending. Choose 1-3 sentiments that speak to you.",
            choices: ["Confident", "Creative", "Effortless", "Polished", "Edgy", "Comfortable", "Trendy"]),
        
        Question(
            id: 3,
            question: "What is/are your occasion(s)?",
            description: "We all have many occasions we dress for, so choose all that apply to you.",
            choices: ["School / Campus", "Work / Internship", "Chill Day / Errands", "Party / Going Out", "Date Night", "Film / Content Creation", "Brunch / Cafe"]),
        
        Question(
            id: 4,
            question: "What aesthetic(s) do you currently lean toward?",
            description: "We all have multiple styles, so choose 1-3 that represent you! If you don't know what your style is, choose something that you want to explore more of!",
            choices: ["Minimal / Clean", "Streetwear", "Romantic / Coquette", "Trendy / Bold", "Vintage / Thrift Core", "Artsy / Quirky", "Preppy / Formal", "Soft / Casual"]),
        
        Question(
            id: 5,
            question: "What aesthetic(s) do you want to explore?",
            description: "Stylistic is here to help you explore your personal style, even if you don't know what you want it to be yet!",
            choices: ["Minimal / Clean", "Streetwear", "Romantic / Coquette", "Trendy / Bold", "Vintage / Thrift Core", "Artsy / Quirky", "Preppy / Formal", "Soft / Casual"]),
        
        Question(
            id: 6,
            question: "What is your budget?",
            description: "We understand that fashion can be expensive, so choose a budget that works for you!",
            choices: ["$0-$50", "$50-$150", "$150-$300", "$300+"])
    ]
}

