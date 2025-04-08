//
//  CardView.swift
//  Pond
//
//  Created by Rachel Radford on 4/8/25.
//

import SwiftUI
import Playbook

struct CardView: View {
  var imageName: String? = nil
  var cardText: String? = nil
  var body: some View {
    PBCard(backgroundColor: Color.green.opacity(0.2), borderRadius: 10, highlight: .top(Color.green), style: .selected(type: .card), shadow: .deep, width: 300) {
      if let cardText = cardText {
        Text(cardText)
          .font(.headline)
          .foregroundColor(.white)
          .padding()
      }
      if let imageName = imageName {
        Image(imageName)
          .frame(maxWidth: .infinity, alignment: .center)
      }
    }
  }
}

#Preview {
  CardView(imageName: "Mentee")
}
