//
//  MentorView.swift
//  Pond
//
//  Created by Rachel Radford on 4/8/25.
//

import SwiftUI
import Playbook

struct MentorView: View {
  private let name: String = "Jenny Gray"
  private let imageName: String = "Jenny"
  private let userTitle: String = "VP of Application Development and Infrastructure"
  @State private var bookNow: Bool = false

  var body: some View {
    VStack(alignment: .leading) {
      PBCard(highlight: .top(.pbPrimary)) {
      UserView(
        userName: name,
        imageName: imageName,
        userTitle: userTitle,
        showButton: true,
        buttonText: "Book Now") {
          bookNow.toggle()
        }
        .globalPosition(alignment: .center, bottom: 70, trailing: 285, isCard: true) {
          BadgeView(badgeText: "Top Rated")
        }
        .presentationMode(isPresented: $bookNow) {
          DialogView()
        }
      ScrollView {
        AboutView()
      }
    }
      .padding()
  }
    .padding()
    .background(Color.background(.light))
  }
}

#Preview {
  MentorView()
}
