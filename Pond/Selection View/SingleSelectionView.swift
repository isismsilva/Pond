//
//  SingleSelectionView.swift
//  Pond
//
//  Created by Isis Silva on 4/8/25.
//

import SwiftUI
import Playbook

struct SingleSelectionView: View {
  let title: String
  @State private var selectedOption: PBRadioItem? = .init("")
  let option1: String
  let option2: String
  let option3: String

  var body: some View {
    VStack(alignment: .leading, spacing: Spacing.small) {
      Text(title).pbFont(.caption)
      PBRadio(
        items: [
          .init(option1),
          .init(option2),
          .init(option3)
        ],
        orientation: .vertical,
        selected: $selectedOption
      )
    }
  }
}

#Preview {
  SingleSelectionView(title: "Title", option1: "Option 1", option2: "Option 2", option3: "Option 3")
}
