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

          ForEach(mentors, id: \.id) { mentor in

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

let mentors: [Mentor] = [
  .init(
    id: 1,
    userName: "Ben Klang",
    imageName: "Ben",
    userTerritory: "PHL",
    userTitle: "Vice President of Business Technology",
    displayAvatar: false
  ),
  .init(
    id: 2,
    userName: "Jenny Gray",
    imageName: "Jenny",
    userTerritory: "PHL",
    userTitle: "VP of Application Development and Infrastructure",
    displayAvatar: false
  ),
  .init(
    id: 3,
    userName: "Marc Sule",
    imageName: "Marc",
    userTerritory: "PHL",
    userTitle: "Chief Business Technology Officer",
    displayAvatar: false
  ),
  .init(
    id: 4,
    userName: "Lauren Klinefelter",
    imageName: "Lauren",
    userTerritory: "PHL",
    userTitle: "Director of Application Development",
    displayAvatar: false
  ),
  .init(
    id: 5,
        userName: "Nida Ghuman",
        imageName: "Nida",
        userTerritory: "PHL",
        userTitle: "Senior Software Engineer",
        displayAvatar: false
       )
]

#Preview {
    DashboardView()
}
