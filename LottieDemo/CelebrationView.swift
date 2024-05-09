//
// CelebrationView.swift
//  LottieDemo
//
//  Created by Autthawigorn Yortpiboot on 9/5/2567 BE.
//

import SwiftUI

struct CelebrationView: View {
    @State private var score = 0
    @State private var play = false
    
    var body: some View {
        NavigationStack {
            ZStack {
                VStack {
                    Button("Can I celebrate") {
                        score = score == 5 ? 0 : (score + 1)
                        print(score)
                        if score == 5 {
                            play = true
                        } else {
                            play = false
                        }
                    }
                    .buttonStyle(.bordered)
                    Text("Score: \(score)")
                }
                .navigationTitle("Celebration")
                LottieView(name: Constants.confetti, play: $play) // Bind to isAnimating
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                        .scaledToFill()
                        .ignoresSafeArea()
                        .id(score)
                        .allowsHitTesting(false)
            }
        }
    }
}

struct CelebrationView_Previews: PreviewProvider {
    static var previews: some View {
        CelebrationView()
    }
}
