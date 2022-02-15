//
//  FruitCard.swift
//  Fructus
//
//  Created by Micaella Morales on 2/15/22.
//

import SwiftUI

struct FruitCardView: View {
  // MARK: - PROPERTIES
  @State private var isAnimating: Bool = false
  
  // MARK: - BODY
  var body: some View {
    ZStack {
      VStack(spacing: 20) {
        Image("blueberry")
          .resizable()
          .scaledToFit()
          .shadow(color: .black.opacity(0.15), radius: 8, x: 6, y: 8)
          .scaleEffect(isAnimating ? 1.0 : 0.6)
          .animation(.easeOut(duration: 0.5), value: isAnimating)
        
        Text("Blueberry")
          .foregroundColor(.white)
          .font(.largeTitle)
          .fontWeight(.heavy)
          .shadow(color: .white.opacity(0.15), radius: 2, x: 2, y: 2)
        
        Text("Blueberries are sweet, nutritious and wildly popular fruit around the world")
          .foregroundColor(.white)
          .multilineTextAlignment(.center)
          .padding(.horizontal, 16)
          .frame(maxWidth: 480)
        
        StartButtonView()
      }
    }
    .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
    .background(.linearGradient(colors: [Color("ColorBlueberryLight"), Color("ColorBlueberryDark")], startPoint: .top, endPoint: .bottom))
    .cornerRadius(20)
    .padding(.horizontal, 20)
    .onAppear(perform: {
      isAnimating = true
    })
    
  }
}

// MARK: - PREVIEW
struct FruitCard_Previews: PreviewProvider {
  static var previews: some View {
    FruitCardView()
      .previewLayout(.fixed(width: 320, height: 640))
  }
}
