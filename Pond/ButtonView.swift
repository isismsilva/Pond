//
//  ButtonView.swift
//  Pond
//
//  Created by Rachel Radford on 4/8/25.
//

import SwiftUI
import Playbook

struct ButtonView: View {
  var buttonText: String = "Check Availability"
  let action: (() -> Void)?
  
  var body: some View {
    PBButton(variant: .secondary, title: buttonText) {
      if let action = action {
        action()
      }
    }
  }
}

#Preview {
  ButtonView(buttonText: "Check Availability", action: {})
}
