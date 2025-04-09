//
//  AboutView.swift
//  Pond
//
//  Created by Rachel Radford on 4/8/25.
//

import SwiftUI
import Playbook

struct AboutView: View {
  let title: String 
  let resume: String
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
        ScrollView(.horizontal) {
          HStack(spacing: Spacing.small) {
            ForEach(Mocks.avatars, id: \.self) { avatar in
              ReviewCardView(avatar: avatar)
            }
          }
          .scrollIndicators(.hidden)
          .padding(.leading)
          }
      }
    }
}

#Preview {
  AboutView(title: "", resume: "")
}
