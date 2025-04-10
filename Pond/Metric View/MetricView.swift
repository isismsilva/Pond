//
//  MetricView.swift
//  Pond
//
//  Created by Rachel Radford on 4/10/25.
//

import SwiftUI
import Playbook

struct MetricView: View {
  @State var selected: Int = 0
  @EnvironmentObject var user: AuthManager

  var body: some View {
    PBCard(borderRadius: 5, highlight: .top(.green), style: .default) {
      if let user = user.user {
        UserView(
          userName: "Welcome Back, \(user.username)",
          imageName: user.username, userTerritory: "PHL",
          userTitle: "Vice President of Application Development",
          showButton: false,
          showBadge: false) {}
      }
      VStack {
        PBNav(
          selected: $selected,
          variant: .subtle,
          orientation: .horizontal,
          title: "",
          borders: false,
          highlight: false
        ) {
          PBNavItem("Overview")
          PBNavItem("Mentees")
          PBNavItem("Workflows")
          PBNavItem("Calendar")
          PBNavItem("Action Items")
        }
        .frame(maxWidth: .infinity, alignment: .leading)

        PBCard(borderRadius: 5, highlight: .top(.green), style: .default) {
          destinationView
        }
        .padding(.bottom, 25)

        Text("Pending Mentees")
          .pbFont(.caption)
          .frame(maxWidth: .infinity, alignment: .leading)
        ReviewCardView(showHighlight: false)
      }
    }
  }

  @ViewBuilder
  var destinationView: some View {
    switch DestionationView.allCases[selected] {
    case .overview:  OverviewCardView()
    case .mentees: MenteesView()
    case .workflows: OverviewCardView()
    case .calendar: CalendarView()
    case .actionItems: OverviewCardView()
    }
  }
}

struct OverviewCardView: View {
  var body: some View {
    VStack(alignment: .leading) {

      Text("Mentee Growth")
        .pbFont(.caption)

        Image("Graph")
          .resizable()
          .frame(width: 500, height: 300)

    }
  }
}

struct CalendarView: View {
  var body: some View {
  Image("Calendar")
      .resizable()
      .frame(width: 500, height: 300)
  }
}

struct MenteesView: View {
  var body: some View {
    Image("Mentees")
      .resizable()
      .frame(width: 600, height: 300)
  }
}

enum DestionationView: String, CaseIterable {
  case overview
  case mentees
  case workflows
  case calendar
  case actionItems

  @ViewBuilder
  var contentView: some View {
    switch self {
    case .overview: OverviewCardView()
    default:
      Text("some view")
    }
  }

}

#Preview {
    MetricView()
}
