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

  var body: some View {
    VStack {
      PBCard(
        backgroundColor: Color.green.opacity(0.2),
        border: true, borderRadius: 10,
        highlight: .top(.pbPrimary),
        style: .default, width: 275
      ) {
        VStack(alignment: .center, spacing: 10) {
          Text("""
              Lorem ipsum dolor sit amet, consectetur adipiscing elit. 
              Pellentesque  pharetra quam ut diam accumsan aliquam. 
              Quisque vel ultrices diam. Ut sit amet blandit ligula
              """)
          .pbFont(.subcaption)
          .lineSpacing(6)
          .lineLimit(10)
          .multilineTextAlignment(.center)
          .frame(height: 175)
          PBAvatar(image: Image(avatar), name: "Caitie Rosenberg", size: .medium)
            .frame(maxWidth: .infinity, alignment: .center)
            .padding(.top, 10)
          Text("Caitie Rosenberg")
            .pbFont(.messageBody, variant: .bold, color: .text(.default))
          Text("Manager of Application Development")
            .pbFont(.subcaption, variant: .light, color: .text(.light))
        }
      }
    }
  }
}

#Preview {
  ReviewCardView(avatar: "Caitie")
}
