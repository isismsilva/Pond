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
      .navigationDestination(for: Screen.self) { $0.destination }
    }
  }
}

#Preview {
  MainView().environmentObject(AuthManager())
}
