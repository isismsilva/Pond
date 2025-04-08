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
  var displayAvatar: Bool = true
  var badgeText1: String = ""
  var badgeText2: String = ""
  var badgeText3: String = ""
    var body: some View {
      PBUser(name: userName, nameFont: .init(font: .body, variant: .bold), image: Image(imageName), size: .medium, territory: userTerritory, title: userTitle, status: .online, displayAvatar: displayAvatar, territoryTitleFont: .subcaption)
      HStack {
        BadgeView(badgeText: badgeText1)
        BadgeView(badgeText: badgeText2)
        BadgeView(badgeText: badgeText3)

      }
    }
}

#Preview {
    UserView()
}
