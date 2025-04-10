//
//  RoleView.swift
//  Pond
//
//  Created by Rachel Radford on 4/8/25.
//

import SwiftUI
import Playbook

struct RoleView: View {
  @EnvironmentObject private var navigation: NavigationViewModel

  var body: some View {
    VStack(alignment: .leading) {
      HeaderView(
        title: "Choose Your Career Path",
        subtitle: "Tell us what you want to grow!"
      )
      .padding(.top)
      .padding(.horizontal)
      PBSectionSeparator()
      ScrollView {
        HStack(spacing: Spacing.medium) {
          CardView(
            title: "Mentee",
            subtitle: "Sign up to find a mentor\n and to take your skills to the next level!",
            image: "Mentee"
          )
          .onTapGesture {
            navigation.goToMenteeQuiz()
          }
          CardView(
            title: "Mentor",
            subtitle: "Join a community of mentors making\n a difference.",
            image: "Mentor"
          )
          .onTapGesture {
            navigation.goToMentorQuiz()
          }
        }
      }
      .padding(.horizontal)
    }
    .background(Color.background(.light))
  }
}

#Preview {
  RoleView().environmentObject(NavigationViewModel())
}
