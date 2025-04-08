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
      PBBadge(text: badgeText, style: .rectangle, variant: .custom(customColor: .green))
    }
}

#Preview {
    BadgeView()
}
