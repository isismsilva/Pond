//
//  NavigationViewModel.swift
//  Pond
//
//  Created by Isis Silva on 4/8/25.
//

import SwiftUI

final class NavigationViewModel: ObservableObject {
  @Published var path = NavigationPath()

  func goToMenteeQuiz() {
    path.append(Screen.menteeQuiz)
  }

  func goToMentorQuiz() {
    path.append(Screen.mentorQuiz)
  }

  func goToDashboard() {
    path.append(Screen.dashboard)
  }

  func goToMetrics() {
    path.append(Screen.metrics)
  }

  func goToMentorPage(with mentodId: Int) {
    path.append(Screen.mentor(id: mentodId))
  }

  func resetToRoot() {
    path = NavigationPath()
  }

  func goTo(newPath: Screen) {
    path.append(newPath)
  }
}

enum Screen: Hashable, Equatable {
  case mentorQuiz
  case menteeQuiz
  case dashboard
  case mentor(id: Int)
  case metrics

  @ViewBuilder
  var destination: some View {
    switch self {
      case .mentorQuiz:
        QuizView(viewModel: MentorViewModel())
      case .menteeQuiz:
        QuizView(viewModel: MenteeViewModel())
      case .dashboard:
        DashboardView()
      case .mentor(let id):
        MentorView(id: id)
      case .metrics:
        MetricView()
    }
  }
}
