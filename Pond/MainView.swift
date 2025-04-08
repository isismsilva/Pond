//
//  MainView.swift
//  Pond
//
//  Created by Isis Silva on 4/7/25.
//

import SwiftUI

struct MainView: View {
  @EnvironmentObject private var authManager: AuthManager
  @EnvironmentObject private var navigation: NavigationViewModel

  var body: some View {
    NavigationStack(path: $navigation.path) {
      VStack {
        Group {
          if authManager.isAuthenticated {
            RoleView()
          } else {
            LoginView()
          }
        }
      }
      .padding()
      .navigationDestination(for: Screen.self) { screen in
        switch screen {
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
  }
}

#Preview {
  MainView().environmentObject(AuthManager())
}

// MARK: - Routes Enum
enum Screen: Hashable, Equatable {
  case mentorQuiz
  case menteeQuiz
  case dashboard
  case confirmation
}


class NavigationViewModel: ObservableObject {
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
