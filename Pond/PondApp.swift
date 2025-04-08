//
//  PondApp.swift
//  Pond
//
//  Created by Isis Silva on 4/7/25.
//

import SwiftUI

@main
struct PondApp: App {
  @StateObject var authManager = AuthManager()
    var body: some Scene {
        WindowGroup {
          MainView().environmentObject(authManager)
        }
    }
}
