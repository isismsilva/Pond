//
//  PondApp.swift
//  Pond
//
//  Created by Isis Silva on 4/7/25.
//

import SwiftUI
import Playbook

@main
struct PondApp: App {
  @StateObject private var authManager = AuthManager()
  @StateObject private var navigation = NavigationViewModel()

  init() {
    registerFonts()
  }
    var body: some Scene {
        WindowGroup {
          MainView()
            .environmentObject(authManager)
            .environmentObject(navigation)
        }
    }
}
