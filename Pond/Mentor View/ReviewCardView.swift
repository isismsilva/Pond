//
//  ReviewCardView.swift
//  Pond
//
//  Created by Rachel Radford on 4/8/25.
//

import SwiftUI
import Playbook

struct ReviewCardView: View {
  let avatar: String
  let name: String
  let role: String = "Manager of Application Development"
  let review: String = """
          Them has consistently demonstrated a strong work ethic, a positive attitude, and a high level of professionalism. They are a reliable team member who communicates effectively and contributes meaningfully to projects. [Name] is proactive in problem-solving, always willing to lend a hand, and brings great energy to the workplace. Their attention to detail and commitment to quality work make them a valuable asset to our team.
          """

  var body: some View {
    VStack {
      PBCard(
        backgroundColor: Color.card,
        border: true, borderRadius: 10,
        highlight: .top(.pbPrimary),
        style: .default, width: 275
      ) {
        VStack(alignment: .center, spacing: 10) {
          Text(review)
          .pbFont(.subcaption)
          .lineSpacing(6)
          .lineLimit(10)
          .multilineTextAlignment(.center)
          .frame(height: 175)
          PBAvatar(image: Image(avatar), name: "Caitie Rosenberg", size: .medium)
            .frame(maxWidth: .infinity, alignment: .center)
            .padding(.top, 10)
          Text(name)
            .pbFont(.messageBody, variant: .bold, color: .text(.default))
          Text(role)
            .pbFont(.subcaption, variant: .light, color: .text(.light))
        }
      }
    }
  }
}

#Preview {
  ReviewCardView(avatar: "Caitie", name: "Catiei")
}
