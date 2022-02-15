//
//  OnboardingView.swift
//  Fructus
//
//  Created by Micaella Morales on 2/15/22.
//

import SwiftUI

struct OnboardingView: View {
  // MARK: - PROPERTY
  var fruits: [Fruit] = fruitsData
  
  // MARK: - BODY
  var body: some View {
    TabView {
      ForEach(fruits[0...5]) { fruit in
        FruitCardView(fruit: fruit)
      }
    }
    .tabViewStyle(.page)
  }
}

// MARK: - PREVIEW
struct OnboardingView_Previews: PreviewProvider {
  static var previews: some View {
    OnboardingView()
  }
}
