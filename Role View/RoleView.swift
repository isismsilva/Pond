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
    VStack {
      HeaderView(
        title: "Choose Your Carrear Path",
        subtitle: "Tell us what you want to grow!"
      )

      HStack {
        CardView(imageName: "Mentee", cardText: "Sign up to find a mentor\n and to take your skills to the next level!")
          .onTapGesture {
            navigation.goToMenteeQuiz()
          }
        CardView(imageName: "Mentor", cardText: "Join a community of mentors making\n a difference.")
          .onTapGesture {
            navigation.goToMentorQuiz()
          }
      }      
    }
  }

  var buttonView: some View {
    PBButton(fullWidth: true, variant: .primary, size: .large, shape: .primary, title: "Submit") {
      
    }
  }
}

#Preview {
//  RoleView(path: .constant(Screen.menteeQuiz.))
}
