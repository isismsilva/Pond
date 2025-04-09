//
//  DashboardView.swift
//  Pond
//
//  Created by Rachel Radford on 4/8/25.
//

import SwiftUI
import Playbook

struct DashboardView: View {
  var body: some View {
    VStack(alignment: .leading) {
      HeaderView(
        title: "Choose someone to grow with",
        subtitle: "Mentorship is about chemistry and growth. These mentors are here to support you—pick someone whose story or vibe speaks to you."
      )
      ScrollView {
        UserView(userName: "Ben Klang", imageName: "Ben", userTitle: "Vice President of Business Technology                            ")

        UserView(userName: "Jenny Gray", imageName: "Jenny", userTitle: "VP of Application Development and Infrastructure         ")

        UserView(userName: "Marc Sule", imageName: "Marc", userTitle: "Chief Business Technology Officer                                 ")

        UserView(userName: "Nida Ghuman", imageName: "Nida", userTitle: "Senior User Experience Engineer                                    ")

        UserView(userName: "Lauren Klinefelter", imageName: "Lauren", userTitle: "Director of Application Development                               ")
      }
      .padding()
    }
  }
}

#Preview {
    DashboardView()
}
