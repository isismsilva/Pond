//
//  MultiSelectionView.swift
//  Pond
//
//  Created by Isis Silva on 4/8/25.
//

import SwiftUI
import Playbook

struct MultiSelectionView: View {
  let title: String
  let option1: String
  let option2: String
  let option3: String
  @State private var select1: Bool = false
  @State private var select2: Bool = false
  @State private var select3: Bool = false

  var body: some View {
    VStack(alignment: .leading) {
      Text(title).pbFont(.caption)
      PBCheckbox(checked: $select1, checkboxType: .default, text: option1, action: {})
      PBSectionSeparator()
      PBCheckbox(checked: $select2, checkboxType: .default, text: option2, action: {})
      PBSectionSeparator()
      PBCheckbox(checked: $select3, checkboxType: .default, text: option3, action: {})
    }
  }
}

#Preview {
  MultiSelectionView(title: "Title", option1: "Option 1", option2: "Option 2", option3: "Option 3")
}
