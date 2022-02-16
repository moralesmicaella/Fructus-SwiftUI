//
//  FruitDetailView.swift
//  Fructus
//
//  Created by Micaella Morales on 2/16/22.
//

import SwiftUI

struct FruitDetailView: View {
  // MARK: - PROPERTIES
  var fruit: Fruit
  
  // MARK: - BODY
  var body: some View {
    NavigationView {
      ScrollView(.vertical, showsIndicators: false) {
        VStack(alignment: .center, spacing: 20) {
          FruitHeaderView(fruit: fruit)
          
          VStack(alignment: .leading, spacing: 20) {
            Text(fruit.title)
              .font(.largeTitle)
              .fontWeight(.heavy)
              .foregroundColor(fruit.gradientColors[1])
            
            Text(fruit.headline)
              .font(.headline)
              .multilineTextAlignment(.leading)
            
            FruitNutrientsView(fruit: fruit)
            
            Text("Learn more about \(fruit.title)".uppercased())
              .fontWeight(.bold)
              .foregroundColor(fruit.gradientColors[1])
            
            Text(fruit.description)
              .multilineTextAlignment(.leading)
            
            SourceLinkView()
              .padding(.top, 10)
              .padding(.bottom, 40)
            
          }
          .padding(.horizontal, 20)
          .frame(maxWidth: 640, alignment: .center)
        }
        .navigationBarHidden(true)
      }
      .edgesIgnoringSafeArea(.top)
    }
    .navigationViewStyle(.stack)
  }
}

// MARK: - PREVIEW
struct FruitDetailView_Previews: PreviewProvider {
  static var previews: some View {
    FruitDetailView(fruit: fruitsData[0])
  }
}
