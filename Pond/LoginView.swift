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
  var body: some View {
    loginView
  }
}
extension LoginView {
  var loginView: some View {
    ZStack {
      Color.background(.default).ignoresSafeArea()
      VStack(spacing: Spacing.small) {
        logoView
        usernameView
        passwordView
        buttonView
        forgotPasswordView
      }
      .padding(.horizontal, 209)
    }
  }
  var logoView: some View {
    VStack(alignment: .leading, spacing: Spacing.small) {
//      Image("createLogo")
      Text("Knowledge Approaches Integrated Into \n Rebuttals and Effective Negotiations")
        .pbFont(.caption)
    }
    .padding(.bottom)
  }
  var usernameView: some View {
    PBTextInput("", text: $username, placeholder: "Username", style: .default, keyboardType: .emailAddress)
  }

  var passwordView: some View {
    VStack(alignment: .leading, spacing: Spacing.none) {
      SecureField(text: $password) {
        Text("Password")
          .pbFont(.body, color: .text(.light))
          .padding(.bottom, Spacing.xSmall)

      }
      .padding(.horizontal, 16)
      .frame(maxHeight: 45)
      .background(Color.white)
      .cornerRadius(BorderRadius.medium)

    }
  }
  var buttonView: some View {
    PBButton(fullWidth: true, variant: .primary, size: .large, shape: .primary, title: "Submit") {
    }
  }
  var forgotPasswordView: some View {
    Link("Forgot Password?", destination: URL(string: "powerhrg.com")!)
      .pbFont(.detail(true), color: .white)

  }
}
#Preview {
  registerFonts()
  return  LoginView()
}
