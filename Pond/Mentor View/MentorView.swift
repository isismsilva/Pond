//
//  MentorView.swift
//  Pond
//
//  Created by Rachel Radford on 4/8/25.
//

import SwiftUI
import Playbook

struct MentorView: View {
  let id: Int
  @State private var bookNow: Bool = false

  var body: some View {
    VStack(alignment: .leading) {
      HeaderView(title: "Mentor", subtitle: "")
        .padding(.top)
        .padding(.horizontal)
      ScrollView {
        PBCard(highlight: .top(.pbPrimary)) {
          let mentor = Mocks.mentors.first { $0.id == id }
          if let mentor = mentor {
          UserView(
            userName: mentor.userName,
            imageName: mentor.imageName,
            userTitle: mentor.userTitle,
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
        }
          if let mentor = mentor {
            AboutView(
              title: "About \(String(describing: mentor.userName))",
              resume: mentor.about
            )
          }
        }
        .padding(.horizontal)
      }
      .padding(.horizontal)
    }
    .background(Color.background(.light))
  }
}

#Preview {
  MentorView(id: 1)
}
