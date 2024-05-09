//
//  LottieView.swift
//  LottieDemo
//
//  Created by Autthawigorn Yortpiboot on 9/5/2567 BE.
//

import SwiftUI
import Lottie

struct LottieView: UIViewRepresentable {
  let name: String
  let loopMode: LottieLoopMode
  let animationSpeed: CGFloat

  @Binding var play: Bool

  init(name: String,
       loopMode: LottieLoopMode = .playOnce,
       animationSpeed: CGFloat = 1,
       play: Binding<Bool> = .constant(true)) {
    self.name = name
    self.loopMode = loopMode
    self.animationSpeed = animationSpeed
    self._play = play
  }

  func makeUIView(context: Context) -> Lottie.LottieAnimationView {
    let animationView = LottieAnimationView(name: name)
    animationView.loopMode = loopMode
    animationView.animationSpeed = animationSpeed
    return animationView
  }

  func updateUIView(_ uiView: Lottie.LottieAnimationView, context: Context) {
    if play {  
        uiView.play()
        
//      uiView.play { _ in
//         play = false
//      }
        
    }
  }
}

