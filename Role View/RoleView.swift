//
//  RoleView.swift
//  Pond
//
//  Created by Rachel Radford on 4/8/25.
//

import SwiftUI
import Playbook

struct RoleView: View {
  @Binding var path: NavigationPath

  var body: some View {
    VStack {
      HeaderView(
        title: "Choose Your Carrear Path",
        subtitle: "Tell us what you want to grow!"
      )

      HStack {
        CardView(imageName: "Mentee", cardText: "Sign up to find a mentor\n and to take your skills to the next level!")
          .onTapGesture {
            path.append(Screen.menteeQuiz)
          }
        CardView(imageName: "Mentor", cardText: "Join a community of mentors making\n a difference.")
          .onTapGesture {
            path.append(Screen.mentorQuiz)
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
