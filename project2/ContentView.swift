//
//  ContentView.swift
//  project2
//
//  Created by 櫻井絵理香 on 2024/09/09.
//

import SwiftUI

struct ContentView: View {
    @State private var showingScore: Bool = false
    @State private var correctAnswer = Int.random(in: 0...2)
    @State private var scoreTitle: String = ""
    @State private var countries = ["Estonia", "France", "Germany", "Ireland", "Italy", "Nigeria", "Poland", "Spain", "UK", "Ukraine", "US"]
    
    func flagTapped(_ number: Int) {
        if number == correctAnswer {
            scoreTitle = "正解\(countries[correctAnswer])"
        } else {
            scoreTitle = "間違ってる！正解は\(countries[correctAnswer])"
        }
        
    }
    
    func askQuestion() {
        countries.shuffle()
        correctAnswer = Int.random(in: 0...2)
    }
    var body: some View {
        HStack {
            ForEach(0..<3) { number in
                Button {
                    // flag was tapped
                    flagTapped(number)
                    askQuestion()
                } label: {
                    Image(countries[number])
                }
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
