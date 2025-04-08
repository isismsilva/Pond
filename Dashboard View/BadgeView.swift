//
//  BadgeView.swift
//  Pond
//
//  Created by Rachel Radford on 4/8/25.
//

import SwiftUI
import Playbook

struct BadgeView: View {
  var badgeText: String = "Accountability Partner"
    var body: some View {
      PBBadge(text: badgeText, style: .rectangle, variant:
        .custom(customColor: Color(#colorLiteral(red: 0.07562058419, green: 0.6807038188, blue: 0.3597236872, alpha: 1))))
    }
}

#Preview {
    BadgeView()
}
