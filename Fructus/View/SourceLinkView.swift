//
//  SourceLinkView.swift
//  Fructus
//
//  Created by Micaella Morales on 2/16/22.
//

import SwiftUI

struct SourceLinkView: View {
  var body: some View {
    GroupBox {
      HStack {
        Text("Context source")
        Spacer()
        Link("Wikipedia", destination: URL(string: "https://wikipedia.org")!)
        Image(systemName: "arrow.up.right.square")
      }
      .font(.footnote)
    }
  }
}

struct SourceLinkView_Previews: PreviewProvider {
  static var previews: some View {
    SourceLinkView()
      .previewLayout(.sizeThatFits)
      .padding()
  }
}
