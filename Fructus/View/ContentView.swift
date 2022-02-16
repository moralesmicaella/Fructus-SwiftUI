//
//  ContentView.swift
//  Fructus
//
//  Created by Micaella Morales on 2/15/22.
//

import SwiftUI

struct ContentView: View {
  // MARK: - PROPERTIES
  var fruits: [Fruit] = fruitsData
  
  // MARK: - BODY
  var body: some View {
    NavigationView{
      List {
        ForEach(fruits.shuffled()) { fruit in
          FruitRowView(fruit: fruit)
            .padding(.vertical, 4)
        }
      }
      .navigationTitle("Fruits")
    }
    .navigationViewStyle(.stack)
  }
}

// MARK: - PREVIEW
struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
