//
//  OnboardingView.swift
//  Fructus
//
//  Created by Micaella Morales on 2/15/22.
//

import SwiftUI

struct OnboardingView: View {
  // MARK: - PROPERTY
  
  // MARK: - BODY
  var body: some View {
    TabView {
      ForEach(0..<5) { _ in
        FruitCardView()
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
