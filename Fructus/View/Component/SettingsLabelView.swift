//
//  SettingsLabelView.swift
//  Fructus
//
//  Created by Micaella Morales on 2/16/22.
//

import SwiftUI

struct SettingsLabelView: View {
  // MARK: - PROPERTIES
  var labelText: String
  var labelImageName: String
  
  // MARK: - BODY
  var body: some View {
    HStack {
      Text(labelText.uppercased()).fontWeight(.bold)
      Spacer()
      Image(systemName: labelImageName)
    }
  }
}

// MARK: - PREVIEW
struct SettingsLabelView_Previews: PreviewProvider {
  static var previews: some View {
    SettingsLabelView(labelText: "Fructus", labelImageName: "info.circle")
      .previewLayout(.sizeThatFits)
      .padding()
  }
}
