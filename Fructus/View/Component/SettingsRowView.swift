//
//  SettingsRowView.swift
//  Fructus
//
//  Created by Micaella Morales on 2/16/22.
//

import SwiftUI

struct SettingsRowView: View {
  // MARK: - PROPERTIES
  var name: String
  var content: String? = nil
  var linkLabel: String? = nil
  var linkDestination: String? = nil
  
  // MARK: - BODY
  var body: some View {
    VStack {
      Divider().padding(.vertical, 4)
      
      HStack {
        Text(name).foregroundColor(.gray)
        Spacer()
        if let content = content {
          Text(content)
        } else if let linkLabel = linkLabel, let linkDestination = linkDestination {
          Link(linkLabel, destination: URL(string: linkDestination)!)
          Image(systemName: "arrow.up.right.square").foregroundColor(.pink)
        }
      }
    }
  }
}

// MARK: - PREVIEW
struct SettingsRowView_Previews: PreviewProvider {
  static var previews: some View {
    Group {
      SettingsRowView(name: "Developer", content: "John / Jane")
        .previewLayout(.fixed(width: 375, height: 60))
        .padding()
      SettingsRowView(name: "Website", linkLabel: "SwiftUI MasterClass", linkDestination: "https://swiftuimasterclass.com")
        .previewLayout(.fixed(width: 375, height: 60))
        .preferredColorScheme(.dark)
        .padding()
    }
  }
}
