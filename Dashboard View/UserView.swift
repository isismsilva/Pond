//
//  UserView.swift
//  Pond
//
//  Created by Rachel Radford on 4/8/25.
//

import SwiftUI
import Playbook

struct Mentor: Codable, Identifiable {
  let id: Int
  var userName: String
  var imageName: String
  var userTerritory: String
  var userTitle: String
  var about: String
  var displayAvatar: Bool
}

struct UserView: View {
  var userName: String = "Ben Klang"
  var imageName: String = "Ben"
  var userTerritory: String = "PHL"
  var userTitle: String = "Vice President of Business Technology"
  var displayAvatar: Bool = false
  var showButton: Bool = true
  var buttonText: String = "Check Availability"

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
          HStack {
            BadgeView(badgeText: "Accountability Partner")
            BadgeView(badgeText: "BT")
            BadgeView(badgeText: "Leadeship Skills")
          }
          .frame(maxWidth: .infinity, alignment: .leading)
        }
        if showButton {
          Button {
            if let action = action {
              action()
            }
          } label: {
            Text(buttonText)
              .foregroundStyle(Color(#colorLiteral(red: 0.07562058419, green: 0.6807038188, blue: 0.3597236872, alpha: 1)))
              .pbFont(.buttonText(15))
              .frame(width: 170, height: 35)


          }
          .background(Color.green.opacity(0.2))
          .clipShape(RoundedRectangle(cornerRadius: 8))
          .padding(.top, 15)
        }
      }
    }
}



#Preview {
  UserView(action: {})
}
