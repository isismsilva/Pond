//
//  HeaderView.swift
//  Pond
//
//  Created by Isis Silva on 4/8/25.
//

import SwiftUI
import Playbook

struct HeaderView: View {
  let title: String
  let subtitle: String

  var body: some View {
    VStack(alignment: .leading) {
      Text(title).pbFont(.title1, variant: .bold)
      Text(subtitle).pbFont(.body)
    }
    .padding()
  }
}

#Preview {
  registerFonts()
  return HeaderView(title: "Title", subtitle: "Subtitle")
}

