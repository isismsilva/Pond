//
//  DialogView.swift
//  Pond
//
//  Created by Isis Silva on 4/9/25.
//

import SwiftUI
import Playbook

struct DialogView: View {
  @State private var bookNow: Bool = false
  @State private var name: String = ""
  @State private var email: String = ""
  @State private var phone: String = ""
  @State private var message: String = ""
  var body: some View {
    PBDialog(
      title: "Information",
      cancelButton: PBButton(title: "Cancel", customView: AnyView(ButtonView(action: {}))),
      confirmButton: PBButton(title: "Cancel"),
      content: ({
        Form {
          TextField("Your Name", text: $name)
          TextField("Your Email", text: $email)
          TextField("Your Phone Number", text: $phone)
          Group {
            PBTextArea("Message", text: $message, placeholder: "Your nessage here...", characterCount: .count)
          }
        }
      }))
    .backgroundViewModifier(alpha: 0.2)
  }
}

#Preview {
  DialogView()
}
