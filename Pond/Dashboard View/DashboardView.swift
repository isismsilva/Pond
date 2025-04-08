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

        UserView(userName: "Ben Klang", imageName: "Ben", userTitle: "Vice President of Business Technology", badgeText1: "Accountability Partner", badgeText2: "Business Technology", badgeText3: "Leadeship Skills")

        UserView(userName: "Jenny Gray", imageName: "Jenny", userTitle: "Vice President of Application Development and Infrastructure", badgeText1: "Accountability Partner", badgeText2: "Business Technology", badgeText3: "Leadeship Skills")

        UserView(userName: "Marc Sule", imageName: "Marc", userTitle: "Chief Business Technology Officer", badgeText1: "Accountability Partner", badgeText2: "Business Technology", badgeText3: "Leadeship Skills")

        UserView(userName: "Nida Ghuman", imageName: "Nida", userTitle: "Senior User Experience Engineer", badgeText1: "Accountability Partner", badgeText2: "Business Technology", badgeText3: "Leadeship Skills")

        UserView(userName: "Lauren Klinefelter", imageName: "Lauren", userTitle: "Director of Application Development", badgeText1: "Accountability Partner", badgeText2: "Business Technology", badgeText3: "Leadeship Skills")
      }
    }
}

#Preview {
    DashboardView()
}
