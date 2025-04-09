//
//  CardView.swift
//  Pond
//
//  Created by Rachel Radford on 4/8/25.
//

import SwiftUI
import Playbook

struct CardView: View {
  var title: String
  var subtitle: String
  var image: String

  var body: some View {
    PBCard(
      backgroundColor: Color.green.opacity(0.2),
      borderRadius: 10,
      highlight: .top(Color.green),
      padding: .zero,
      style: .selected(type: .card),
      shadow: .deep,
      width: nil
    ) {
      VStack(alignment: .leading, spacing: Spacing.xxSmall) {
          Text(title)
            .pbFont(.title1, variant: .bold)
          Text(subtitle)
            .pbFont(.body)
          Image(image)
            .resizable()
            .scaledToFit()
            .padding(.vertical, -42)
      }
      .padding(.horizontal, Spacing.large)
      .padding(.top, Spacing.large)
    }
  }
}

#Preview {
  registerFonts()
  return CardView(title: "Mentee", subtitle: "Welcome to Pond", image: "Mentee")
}
