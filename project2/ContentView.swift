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
    @State private var total: Int = 0
    
    func flagTapped(_ number: Int) -> Int {
        if number == correctAnswer {
            scoreTitle = "正解\(countries[correctAnswer])"
            total += 1
            return total
        } else {
            scoreTitle = "間違ってる！正解は\(countries[correctAnswer])"
            total += 0
            return total
        }
        
    }
    
    
    func askQuestion() {
        countries.shuffle()
        correctAnswer = Int.random(in: 0...2)
    }
    var body: some View {
        VStack (alignment: .center){
            Text("\(countries[correctAnswer])はどれ？")
                .font(.title2)
                .padding()
            VStack (alignment: .leading){
                ForEach(0..<3) { number in
                    Button {
                        // flag was tapped
                        flagTapped(number)
                        askQuestion()
                    } label: {
                        Image(countries[number])
                            .border(Color.black)
                    }
                    .padding()
                }
            }
            .padding()
            Text("現在の正解数\(total)")
                .font(.title2)
        }
    }
}

#Preview {
    ContentView()
}
