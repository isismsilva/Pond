//
//  PondApp.swift
//  Pond
//
//  Created by Isis Silva on 4/7/25.
//

import SwiftUI

@main
struct PondApp: App {
  @StateObject private var authManager = AuthManager()
  @StateObject private var navigation = NavigationViewModel()
    var body: some Scene {
        WindowGroup {
          MainView()
            .environmentObject(authManager)
            .environmentObject(navigation)
        }
    }
}
