//
//  SettingsView.swift
//  Fructus
//
//  Created by Micaella Morales on 2/16/22.
//

import SwiftUI

struct SettingsView: View {
  // MARK: - PROPERTIES
  @Environment(\.presentationMode) var presentationMode
  @AppStorage("isOnboarding") var isOnboarding: Bool = false
  
  // MARK: - BODY
  var body: some View {
    NavigationView {
      ScrollView(.vertical, showsIndicators: false) {
        VStack(spacing: 20) {
          GroupBox(
            label: SettingsLabelView(labelText: "Fructus", labelImageName: "info.circle")
          ) {
            Divider().padding(.vertical, 4)
            
            HStack(alignment: .center, spacing: 10) {
              Image("logo")
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80)
                .cornerRadius(9)
              
              Text("Most fruits are naturally low in fat, sodium, and calories. None have cholesterol. Fruits are sources of many essential nutrients including potassium, dietary fiber, vitamins, and much more.")
                .font(.footnote)
            }
          }
          
          GroupBox(
            label: SettingsLabelView(labelText: "Customization", labelImageName: "paintbrush")
          ) {
            Divider().padding(.vertical, 4)
            
            Text("If you wish, you can restart the application by toggling the switch in this box. It will start the onboarding process and you will see the welcome screen again.")
              .font(.caption)
              .multilineTextAlignment(.leading)
              .padding(.vertical, 8)
              .frame(minHeight: 60)
              .layoutPriority(1)
            
            Toggle(isOn: $isOnboarding) {
              if isOnboarding {
                Text("RESTARTED")
                  .fontWeight(.bold)
                  .foregroundColor(.green)
              } else {
                Text("RESTART")
                  .fontWeight(.bold)
                  .foregroundColor(.secondary)
              }
            }
            .padding()
            .background(
              Color(UIColor.tertiarySystemBackground)
                .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
            )
          }
          
          GroupBox(
            label: SettingsLabelView(labelText: "Application", labelImageName: "apps.iphone")
          ) {
            SettingsRowView(name: "Developer", content: "John / Jane")
            SettingsRowView(name: "Designer", content: "Robert Petras")
            SettingsRowView(name: "Compatability", content: "iOS 14 +")
            SettingsRowView(name: "Website", linkLabel: "SwiftUI MasterClass", linkDestination: "https://swiftuimasterclass.com")
            SettingsRowView(name: "Version", content: "1.1.0")
          }
        }
        .navigationBarTitle("Settings", displayMode: .large)
        .navigationBarItems(
          trailing:
            Button(action: {
              presentationMode.wrappedValue.dismiss()
            }) {
              Image(systemName: "xmark")
            }
        )
        .padding()
      }
    }
  }
}

// MARK: - PREVIEW
struct SettingsView_Previews: PreviewProvider {
  static var previews: some View {
    SettingsView()
      .preferredColorScheme(.dark)
  }
}
