//
//  ContentView.swift
//  project2
//
//  Created by 櫻井絵理香 on 2024/09/09.
//

import SwiftUI

struct ContentView: View {
    var countries = ["Estonia", "France", "Germany", "Ireland", "Italy", "Nigeria", "Poland", "Spain", "UK", "Ukraine", "US"]
    var correctAnswer = Int.random(in: 0...2)
    var body: some View {
        VStack {
            ForEach(0..<3) { number in
                Button {
                    // flag was tapped
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
