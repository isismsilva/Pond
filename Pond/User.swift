//
//  User.swift
//  Pond
//
//  Created by Isis Silva on 4/8/25.
//

import Foundation

struct User: Codable, Identifiable {
  let id: UUID
  let username: String
  let password: String
}

class AuthManager: ObservableObject {
  @Published var user: User? = nil
  @Published var isAuthenticated: Bool = false

  func login(username: String, password: String) {

//    self.user = User(id: UUID(), username: username, password: password)
//    self.isAuthenticated = true
    if !username.isEmpty && !password.isEmpty {
      self.user = User(id: UUID(), username: username, password: password)
      self.isAuthenticated = true
    } else {
      self.isAuthenticated = false
    }
  }

  func logout() {
    self.user = nil
    self.isAuthenticated = false
  }
}
