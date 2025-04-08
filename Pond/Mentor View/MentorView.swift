//
//  MentorView.swift
//  Pond
//
//  Created by Rachel Radford on 4/8/25.
//

import SwiftUI
import Playbook

struct MentorView: View {
    var body: some View {
      PBCard(backgroundColor: Color.green.opacity(0.2), borderRadius: 10, highlight: .top(Color.green), style: .selected(type: .card), shadow: .deep, width: 300) {

      }
    }
}

#Preview {
    MentorView()
}
