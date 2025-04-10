//
//  ReviewCardView.swift
//  Pond
//
//  Created by Rachel Radford on 4/8/25.
//

import SwiftUI
import Playbook

struct ReviewCardView: View {
  let avatar: String? = nil
  let showHighlight: Bool
  let showText: Bool = false
  var body: some View {
    ScrollView(.horizontal, showsIndicators: false) {
      HStack {
        ForEach(Mocks.avatars, id: \.self) { avatar in
          VStack {
            PBCard(
              border: true, borderRadius: 10,
              highlight: .top(showHighlight ? .green : .clear),
              style: .default, width: 275
            ) {
              VStack(alignment: .center, spacing: 10) {
                if showText {
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
                }
                PBAvatar(image: Image(avatar.description), name: avatar.description, size: .medium)
                  .frame(maxWidth: .infinity, alignment: .center)
                  .padding(.top, 10)
                Text(avatar.description)
                  .pbFont(.messageBody, variant: .bold, color: .text(.default))
                Text("Manager of Application Development")
                  .pbFont(.subcaption, variant: .light, color: .text(.light))
                ButtonView(buttonText: "Accept") {

                }

                PBButton(variant: .link, title: "Decline") {}
              }
            }
          }
        }
      }
    }
  }
}

#Preview {
  ReviewCardView(showHighlight: true)
}
