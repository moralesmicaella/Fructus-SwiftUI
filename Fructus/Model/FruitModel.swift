//
//  FruitModel.swift
//  Fructus
//
//  Created by Micaella Morales on 2/15/22.
//

import SwiftUI

struct Fruit: Identifiable {
  let id = UUID()
  var title: String
  var headline: String
  var imageName:  String
  var gradientColors: [Color]
  var description: String
  var nutrition: [String]
}
