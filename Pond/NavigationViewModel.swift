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

  func goToConfirmation() {
    path.append(Screen.confirmation)
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
  case confirmation

  @ViewBuilder
  var destination: some View {
    switch self {
      case .mentorQuiz:
        QuizView(viewModel: MentorViewModel())
      case .menteeQuiz:
        QuizView(viewModel: MenteeViewModel())
      case .dashboard:
        DashboardView()
      case .confirmation:
        ConfirmationView()
    }
  }
}
