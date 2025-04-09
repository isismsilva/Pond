//
//  ButtonView.swift
//  Pond
//
//  Created by Rachel Radford on 4/8/25.
//

import SwiftUI

struct ButtonView: View {
  var buttonText: String = "Check Availability"
  let action: (() -> Void)?
  
    var body: some View {
      Button {
        if let action = action {
          action()
        }

      } label: {
        Text(buttonText)
          .foregroundStyle(Color(#colorLiteral(red: 0.07562058419, green: 0.6807038188, blue: 0.3597236872, alpha: 1)))
          .pbFont(.buttonText(15))
          .frame(width: 170, height: 35)


      }
      .background(Color.green.opacity(0.2))
      .clipShape(RoundedRectangle(cornerRadius: 8))
      .padding(.top, 15)
    }
}

#Preview {
  ButtonView(action: {})
}
