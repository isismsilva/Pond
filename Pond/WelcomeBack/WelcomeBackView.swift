//
//  WelcomeBackView.swift
//  Pond
//
//  Created by Rachel Radford on 4/10/25.
//

import SwiftUI
import Playbook

struct WelcomeBackView: View {
    var body: some View {
      PBCard(borderRadius: 5, highlight: .top(.green)) {
        UserView(userName: "Welcome Back, Nick", imageName: "Ben", userTitle: "UX Engineer", showButton: false, showBadge: false) {
        }
        Image("RedCard")
          .resizable()
          .frame(maxWidth: .infinity, alignment: .trailing)
          .frame(height: 40)
        HStack {
          VStack {
            Text("Agenda Items For Jenny")
              .pbFont(.caption, color: .pbPrimary)
            Image("Selectable List")
              .resizable()
              .frame(width: 150, height: 100)
          }
          .frame(maxWidth: .infinity, alignment: .leading)
          Spacer()
          VStack {
            Text("My Goals")
              .pbFont(.caption, color: .pbPrimary)
            PBCard(borderRadius: 5, highlight: .top(.green)) {
              Text("Read 'Good to Great' Book")
                .pbFont(.subcaption, variant: .bold, color: .text(.default))
              HStack(spacing: Spacing.medium) {
                Image("Progress Simple")
                  .resizable()
                  .frame(width: 100, height: 8)
                PBButton(variant: .link, title: "Update") {
                }
              }

            }
            .frame(width: 230)

          }
        }

        VStack {
          Text("My Mentors")
            .pbFont(.caption, color: .pbPrimary)
            .frame(maxWidth: .infinity, alignment: .leading)
          Image("JennyCard")
        }
        .frame(width: 250, height: 200)
      }
      .padding()
      .environmentObject(AuthManager())
    }
}

#Preview {
    WelcomeBackView()
}
