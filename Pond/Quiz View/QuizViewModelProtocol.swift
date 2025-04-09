//
//  QuizViewModelProtocol.swift
//  Pond
//
//  Created by Isis Silva on 4/8/25.
//

import SwiftUI

protocol QuizViewModelProtocol {
  var title: String { get }
  var subtitle: String { get }

  var selectTitle1: String { get }
  var selectOptions1: [(value: String, text: String?)] { get }

  var selectTitle2: String { get }
  var selectOptions2: [(value: String, text: String?)] { get }

  var singleSelectionTitle1: String { get }
  var singleSelectionOptions1: [String] { get }
  var singleSelectionTitle2: String { get }
  var singleSelectionOptions2: [String] { get }

  var multiSelectionTitle1: String { get }
  var multiSelectionOptions1: [String] { get }
  var multiSelectionTitle2: String { get }
  var multiSelectionOptions2: [String] { get }

  var multiSelectionTitle3: String { get }
  var multiSelectionOptions3: [String] { get }
  var multiSelectionTitle4: String { get }
  var multiSelectionOptions4: [String] { get }

  var path: Screen { get }
}

class MenteeViewModel: QuizViewModelProtocol, ObservableObject {
  var path = Screen.dashboard

  var title: String = "Ready to level up? Your mentor quest starts here!"
  var subtitle: String = "We’re excited to see all you accomplish! Next, let’s gather a few details about your areasof growth to ensure we find the perfect mentor for you."

  var selectTitle1: String = "How do you prefer to connect with your mentor?"
  var selectOptions1: [(value: String, text: String?)] = [
    (value: "1", text:"Weekly"),
    (value: "2", text:"Bi-weekly"),
    (value: "3", text: "Monthly")
  ]

  var selectTitle2: String = "What areas are you looking to develop?"
  var selectOptions2: [(value: String, text: String?)] = [
    (value: "1", text:"Technical skills"),
    (value: "2", text:"Leadership"),
    (value: "3", text:"Career planning"),
    (value: "4", text:"Work-life balance"),
    (value: "5", text:"Networking")
  ]

  var singleSelectionTitle1: String = "What specific technology area do you want to learn about?"
  var singleSelectionOptions1: [String] = ["Web Development", "Mobile Development", "QA/Testing", "DevOps", "Data Science", "Machine Learning", "UX/UI Design", "Cybersecurity"]

  var singleSelectionTitle2: String = "What kind of mentor style works best for you?"
  var singleSelectionOptions2: [String] = ["Cheerleader (motivating & encouraging)", "Challenger (pushes you to grow)", "Advisor (shares experiences)", "Connector (introduces you to others)", "Teacher (explains concepts)"]

  var multiSelectionTitle1: String = "What is your current experience level?"
  var multiSelectionOptions1: [String] = ["Beginner", "Intermediate", "Advanced", "Looking to switch careers"]

  var multiSelectionTitle2: String = "What are your primary mentorship goals?"
  var multiSelectionOptions2: [String] = ["Skill development", "Career advancement", "Project guidance", "Industry insights", "Building professional network", "Work-life balance"]

  var multiSelectionTitle3: String = "How long are you looking for mentorship support?"
  var multiSelectionOptions3: [String] = ["1-3 months", "3-6 months", "6-12 months", "Ongoing/Long-term"]

  var multiSelectionTitle4: String = "What personal qualities do you value in a mentor?"
  var multiSelectionOptions4: [String] = ["Patience", "Direct communication", "Enthusiasm", "Analytical thinking", "Creative problem-solving", "Industry connections"]
}

class MentorViewModel: QuizViewModelProtocol, ObservableObject {
  var path = Screen.confirmation

  var title: String = "Ready to share your wisdom? Your mentoring journey starts here!"
  var subtitle: String = "We're excited to see the impact you'll make! Next, let's gather a few details about your expertise to ensure we find mentees who will benefit most from your guidance."

  var selectTitle1: String = "How often can you commit to mentoring sessions?"
  var selectOptions1: [(value: String, text: String?)] = [
    (value: "1", text: "Weekly"),
    (value: "2", text: "Bi-weekly"),
    (value: "3", text: "Monthly")]

  var selectTitle2: String = "What expertise can you share with mentees?"
  var selectOptions2: [(value: String, text: String?)] =
  [(value: "1", text: "Technical skills"),
   (value: "2", text: "Leadership"),
   (value: "3", text:"Career planning"),
   (value: "4", text:"Work-life balance"),
   (value: "5", text:"Networking")
  ]

  var singleSelectionTitle1: String = "What technology areas are you experienced in?"
  var singleSelectionOptions1: [String] = ["Web Development", "Mobile Development", "QA/Testing", "DevOps", "Data Science", "Machine Learning", "UX/UI Design", "Cybersecurity"]

  var singleSelectionTitle2: String = "What mentoring approach do you prefer?"
  var singleSelectionOptions2: [String] = ["Guiding (ask questions to help them discover)", "Teaching (direct instruction)", "Sharing experiences (storytelling)", "Goal-setting (structured development)", "Networking (making connections)"]

  var multiSelectionTitle1: String = "How many years of experience do you have in your field?"
  var multiSelectionOptions1: [String] = ["1-3 years", "4-7 years", "8-12 years", "12+ years"]

  var multiSelectionTitle2: String = "What type of mentees do you prefer working with?"
  var multiSelectionOptions2: [String] = ["Beginners", "Career changers", "Mid-level professionals", "Aspiring leaders", "Technical specialists", "Entrepreneurs"]

  var multiSelectionTitle3: String = "How long are you willing to commit to a mentorship relationship?"
  var multiSelectionOptions3: [String] = ["1-3 months", "3-6 months", "6-12 months", "Ongoing/Long-term"]

  var multiSelectionTitle4: String = "What personal strengths do you bring to mentoring?"
  var multiSelectionOptions4: [String] = ["Active listening", "Constructive feedback", "Strategic thinking", "Network building", "Technical expertise", "Industry insights"]
}

let options: [(value: String, text: String?)] = [
  (value: "1", text: "Reading"),
  (value: "2", text: "Speaking"),
  (value: "3", text: "Watching Videos")
]
