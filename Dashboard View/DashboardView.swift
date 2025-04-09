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
      PBCard(backgroundColor: Color.green.opacity(0.2), borderRadius: 10, highlight: .top(Color.green), style: .selected(type: .card), shadow: .deep, width: 600) {
        HeaderView(title: "Choose someone to grow with", subtitle: "Mentorship is about chemistry and growth. These mentors are here to support you—pick someone whose story or vibe speaks to you.")
        UserView(userName: "Ben Klang", imageName: "Ben", userTitle: "Vice President of Business Technology                 ", action: {})

        UserView(userName: "Jenny Gray", imageName: "Jenny", userTitle: "VP of Application Development and Infrastructure", action: {})

        UserView(userName: "Marc Sule", imageName: "Marc", userTitle: "Chief Business Technology Officer                       ", action: {})

        UserView(userName: "Nida Ghuman", imageName: "Nida", userTitle: "Senior User Experience Engineer                         ", action: {})

        UserView(userName: "Lauren Klinefelter", imageName: "Lauren", userTitle: "Director of Application Development                     ", action: {})

        UserView(userName: "Kelly Speier", imageName: "Kelly", userTitle: "Lead User Experience Designer                          ", action: {})
        }
    }
}

#Preview {
    DashboardView()
}
