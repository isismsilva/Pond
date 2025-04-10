//
//  LoginView.swift
//  Pond
//
//  Created by Isis Silva on 4/7/25.
//

import SwiftUI
import Playbook

struct LoginView: View {
  @State private var username: String = ""
  @State private var password: String = ""

  @EnvironmentObject var authManager: AuthManager

  var body: some View {
    loginView
  }
}

extension LoginView {
  var loginView: some View {
    ZStack {
      Color.clear
      VStack(spacing: 100) {
        logoView
        inputView.frame(width: 400)
        VStack {
          buttonView
          forgotPasswordView
        }
        .frame(width: 400)
      }
    }
  }

  var inputView: some View {
    VStack(spacing: Spacing.none) {
      usernameView
      passwordView
    }
  }

  var logoView: some View {
    VStack(alignment: .leading, spacing: Spacing.small) {
      Text("Knowledge Approaches Integrated Into \n Rebuttals and Effective Negotiations")
        .pbFont(.caption)
    }
  }

  var usernameView: some View {
    PBTextInput("", text: $username, placeholder: "Username", style: .default, keyboardType: .emailAddress)
  }

  var passwordView: some View {
    PBTextInput("", text: $password, placeholder: "Password", style: .default, keyboardType: .asciiCapableNumberPad)
  }

  var buttonView: some View {
    PBButton(fullWidth: true, variant: .primary, size: .large, shape: .primary, title: "Submit") {
      authManager.login(username: username, password: password)
    }
  }

  var forgotPasswordView: some View {
    Link("Forgot Password?", destination: URL(string: "powerhrg.com")!)
      .pbFont(.detail(true), color: .gray)
  }
}

#Preview {
  registerFonts()
  return  LoginView()
}
