//
//  AboutView.swift
//  Pond
//
//  Created by Rachel Radford on 4/8/25.
//

import SwiftUI
import Playbook

struct AboutView: View {
  let title: String = "About Jenny"
  let resume: String = """
           Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque  egestas, lorem sit amet faucibus pellentesque, lorem velit vehicula  nisl, vitae consequat elit ex at velit. Nulla vel rhoncus turpis.  Aliquam nec ante eget ex ultrices dictum. Aliquam nisl ex, ultricies ut  malesuada hendrerit, sodales eu sem. Morbi efficitur elit et dictum  rutrum. Sed non ullamcorper orci, ac bibendum nisl. Aenean egestas neque leo, vitae euismod nisi iaculis et. Phasellus vitae odio ac libero  porttitor condimentum nec vel mi. Nulla molestie, eros quis placerat  dapibus, nulla nunc pretium massa, ac placerat elit turpis sed enim.     
           """
    var body: some View {
      VStack(alignment: .leading, spacing: Spacing.medium) {
        Text(title)
          .pbFont(.caption, variant: .bold, color: .pbPrimary)
          .padding(.top, 30)

        HStack(alignment: .top, spacing: 35) {
          Text(resume)
          .pbFont(.body, variant: .light, color: .text(.light))
          VStack(alignment: .leading, spacing: 10) {
            Text(
              """
              Availability:
              Mon, Tues, Fri: 11 - 1
              Wed & Thurs: 1 - 3
              """
            )
            .pbFont(.caption, variant: .bold, color: .text(.default))
          }
        }
        .padding(.bottom)

        Text("Reviews")
          .pbFont(.caption, variant: .bold, color: .pbPrimary)
          .padding(.bottom, Spacing.xSmall)

        ReviewCardView(showHighlight: true)

      }
    }
}

#Preview {
    AboutView()
}
