//
//  QuizView.swift
//  Pond
//
//  Created by Isis Silva on 4/7/25.
//

import SwiftUI
import Playbook

struct QuizView: View {
  @State private var selectOption1: String = "Choose an option"
  @State private var selectOption2: String = "Choose an option"
  var body: some View {
    VStack(alignment: .leading) {
      HeaderView(
        title: "Ready to level up? Your mentor quest starts here!",
        subtitle: "We’re excited to see all you accomplish! Next, let’s gather a few details about your areasof growth to ensure we find the perfect mentor for you."
      )

      ScrollView {
        HStack(spacing: Spacing.large) {
          PBSelect(title: "How do you usually learn best?", options: options, style: .default, selected: $selectOption1) { selected in
            selectOption1 = selected
          }

          PBSelect(title: "How do you usually learn best?", options: options, style: .default, selected: $selectOption2) { selected in
            selectOption2 = selected
          }

        }
        .padding()

        HStack(spacing: Spacing.large) {
          SingleSelectionView(
            title: "How do you prefer to connect with your mentor?",
            option1: "Weekly",
            option2: "Bi-weekly",
            option3: "Monthly"
          )
          .frame(maxWidth: .infinity, alignment: .leading)
          SingleSelectionView(
            title: "How do you prefer to connect with your mentor?",
            option1: "Weekly",
            option2: "Bi-weekly",
            option3: "Monthly"
          )
          .frame(maxWidth: .infinity, alignment: .leading)
        }
        .padding()

        HStack(spacing: Spacing.large) {
          MultiSelectionView(
            title: "What kind of mentor vibe are you looking for?",
            option1: "Cheerleader (motivating & encouraging)",
            option2: "Challenger (pushes you to grow)",
            option3: "Accountability partner"
          )
          MultiSelectionView(
            title: "What kind of mentor vibe are you looking for?",
            option1: "Cheerleader (motivating & encouraging)",
            option2: "Challenger (pushes you to grow)",
            option3: "Accountability partner"
          )
        }
        .padding()

        HStack(spacing: Spacing.large) {
          MultiSelectionView(
            title: "What kind of mentor vibe are you looking for?",
            option1: "Cheerleader (motivating & encouraging)",
            option2: "Challenger (pushes you to grow)",
            option3: "Accountability partner"
          )
          MultiSelectionView(
            title: "What kind of mentor vibe are you looking for?",
            option1: "Cheerleader (motivating & encouraging)",
            option2: "Challenger (pushes you to grow)",
            option3: "Accountability partner"
          )
        }
        .padding()

        HStack(spacing: Spacing.large) {
          MultiSelectionView(
            title: "What kind of mentor vibe are you looking for?",
            option1: "Cheerleader (motivating & encouraging)",
            option2: "Challenger (pushes you to grow)",
            option3: "Accountability partner"
          )
          MultiSelectionView(
            title: "What kind of mentor vibe are you looking for?",
            option1: "Cheerleader (motivating & encouraging)",
            option2: "Challenger (pushes you to grow)",
            option3: "Accountability partner"
          )
        }
        .padding()

        PBButton(fullWidth: true, title: "Finish")
          .padding(.top, 60)
          .padding(.horizontal, 300)
      }
      .padding()
    }
  }
}

#Preview {
  registerFonts()
  return QuizView()
}


struct SelectOptions {
  let value: String
  let text: String
}

let options: [(value: String, text: String?)] = [
  (value: "1", text: "Reading"),
  (value: "2", text: "Speaking"),
  (value: "3", text: "Watching Videos")
]
