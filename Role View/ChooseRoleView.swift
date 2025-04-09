//
//  ChooseRoleView.swift
//  Pond
//
//  Created by Rachel Radford on 4/9/25.
//

import SwiftUI

struct ChooseRoleView: View {
  var body: some View {
    Text("""
Are you here to share your expertise or find guidance? Let us know which role fits you best:
Choose "Mentor" if: You have experience to share, enjoy developing others, and want to make an impact by guiding someone on their professional journey.
Choose "Mentee" if: You're seeking growth, looking for expert guidance, and ready to learn from someone who's been where you want to go.
Your perfect mentorship match awaits! Which path will you choose today?
""")
    .padding()
    .lineSpacing(8)
    .pbFont(.body, color: .text(.default))
  }
}

#Preview {
  ChooseRoleView()
}
