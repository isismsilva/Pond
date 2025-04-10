//
//  UserView.swift
//  Pond
//
//  Created by Rachel Radford on 4/8/25.
//

import SwiftUI
import Playbook

struct UserView: View {
  var userName: String = "Ben Klang"
  var imageName: String = "Ben"
  var userTerritory: String = "PHL"
  var userTitle: String = "Vice President of Business Technology"
  var displayAvatar: Bool = false
  var showButton: Bool = true
  var buttonText: String = "Check Availability"
  var showBadge: Bool = true
  let action: (() -> Void)?
  
    var body: some View {
      HStack(alignment: .top) {
        PBAvatar(image: Image(imageName), size: .medium, status: .online, statusSize: .medium)
        VStack(alignment: .leading) {
          PBUser(
            name: userName,
            nameFont: .init(font: .body, variant: .bold),
            image: Image(imageName),
            size: .medium,
            territory: userTerritory,
            title: userTitle,
            status: .online,
            displayAvatar: displayAvatar,
            territoryTitleFont: .subcaption
          )
          if showBadge {
            HStack {
              BadgeView(badgeText: "Accountability Partner")
              BadgeView(badgeText: "BT")
              BadgeView(badgeText: "Leadeship Skills")
            }
            .frame(maxWidth: .infinity, alignment: .leading)
          }
        }
        if showButton {
          ButtonView(buttonText: buttonText) {
            if let action = action {
              action()
            }
          }
          .padding(.top, 15)
        }
      }
    }
}

#Preview {
  UserView(action: {})
}
