//
//  DashboardView.swift
//  Pond
//
//  Created by Rachel Radford on 4/8/25.
//

import SwiftUI
import Playbook

struct DashboardView: View {
  @EnvironmentObject private var navigation: NavigationViewModel
  var body: some View {
    VStack(alignment: .leading) {
      HeaderView(
        title: "Choose someone to grow with",
        subtitle: "Mentorship is about chemistry and growth. These mentors are here to support you—pick someone whose story or vibe speaks to you."
      )
        .padding()
      ScrollView {
        PBCard(highlight: .top(.pbPrimary)) {

          ForEach(Mocks.mentors, id: \.id) { mentor in

            UserView(
              userName: mentor.userName,
              imageName: mentor.imageName,
              userTerritory: mentor.userTerritory,
              userTitle: mentor.userTitle
            ) {
              navigation.goToMentorPage(with: mentor.id)
              }
          }
        }
        .padding()
      }
      .padding(.horizontal)
    }
    .background(Color.background(.light))
  }
}

#Preview {
  DashboardView()
}
