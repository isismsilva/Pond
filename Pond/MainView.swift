//
//  MainView.swift
//  Pond
//
//  Created by Isis Silva on 4/7/25.
//

import SwiftUI

struct MainView: View {
  @EnvironmentObject var authManager: AuthManager
  @State private var path = NavigationPath()

  var body: some View {
    NavigationStack(path: $path) {
      VStack {
        Group {
          if authManager.isAuthenticated {
            RoleView(path: $path)
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
}
