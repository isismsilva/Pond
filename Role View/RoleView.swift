//
//  RoleView.swift
//  Pond
//
//  Created by Rachel Radford on 4/8/25.
//

import SwiftUI
import Playbook
struct RoleView: View {
    var body: some View {
      HStack {
        CardView(imageName: "Mentee", cardText: "Sign up to find a mentor\n and to take your skills to the next level!")
        CardView(imageName: "Mentor", cardText: "Join a community of mentors making\n a difference.")
      }
    }
}

#Preview {
    RoleView()
}
