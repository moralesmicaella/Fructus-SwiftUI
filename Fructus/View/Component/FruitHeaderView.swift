//
//  FruitHeaderView.swift
//  Fructus
//
//  Created by Micaella Morales on 2/16/22.
//

import SwiftUI

struct FruitHeaderView: View {
  // MARK: - PROPERTIES
  @State private var isAnimating: Bool = false
  
  var fruit: Fruit
  
  // MARK: - BODY
  var body: some View {
    ZStack {
      LinearGradient(gradient: Gradient(colors: fruit.gradientColors), startPoint: .topLeading, endPoint: .bottomTrailing)
      Image(fruit.imageName)
        .resizable()
        .scaledToFit()
        .shadow(color: .black.opacity(0.15), radius: 8, x: 6, y: 6)
        .padding(.vertical, 20)
        .scaleEffect(isAnimating ? 1.0 : 0.6)
        .animation(.easeOut(duration: 0.5), value: isAnimating)
      
    }
    .frame(height: 440)
    .onAppear(perform: {
      isAnimating = true
    })
  }
}

// MARK: - PREVIEW
struct FruitHeaderView_Previews: PreviewProvider {
  static var previews: some View {
    FruitHeaderView(fruit: fruitsData[0])
      .previewLayout(.fixed(width: 375, height: 440))
  }
}
