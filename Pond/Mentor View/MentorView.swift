//
//  MentorView.swift
//  Pond
//
//  Created by Rachel Radford on 4/8/25.
//

import SwiftUI
import Playbook

struct MentorView: View {
  @State private var bookNow: Bool = false
  @State private var name: String = ""
  @State private var email: String = ""
  @State private var phone: String = ""
  @Binding var message: String
    var body: some View {
      PBCard(backgroundColor: Color.green.opacity(0.2), borderRadius: 10, highlight: .top(Color.green), style: .selected(type: .card), shadow: .deep, width: 800) {
        VStack(alignment: .leading) {
          UserView(userName: "Jenny Gray", imageName: "Jenny", userTitle: "VP of Application Development and Infrastructure                                                                                                                  ", showButton: true, buttonText: "Book Now", action: {
           bookNow.toggle()
          })
            .globalPosition(alignment: .center, bottom: 70, trailing: 285, isCard: true) {
              BadgeView(badgeText: "Top Rated")
            }
            .presentationMode(isPresented: $bookNow) {
                VStack{
                    PBDialog(
                        title: "Information",
                        cancelButton: PBButton(title: "Cancel", customView: AnyView(ButtonView(action: {}))),
                        confirmButton: PBButton(title: "Cancel"),
                        content: ({
                            Form {
                            TextField("Your Name", text: $name)
                            TextField("Your Email", text: $email)
                              TextField("Your Phone Number", text: $phone)
                              Group {
                                PBTextArea("Message", text: $message, placeholder: "Your nessage here...", characterCount: .count)
                              }
                          }
                        }))
                    .backgroundViewModifier(alpha: 0.2)
                }

            }
          AboutView()

        }
      }
      .frame(maxHeight: .infinity)
    }
}

#Preview {
  MentorView(message: .constant("Hello!"))
}
