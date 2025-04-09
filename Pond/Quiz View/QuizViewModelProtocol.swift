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

  var selectTitle1: String = "How do you usually learn best?"
  var selectOptions1: [(value: String, text: String?)] = options

  var selectTitle2: String = "How do you usually learn best?"
  var selectOptions2: [(value: String, text: String?)] = options


  var singleSelectionTitle1: String = "How do you prefer to connect with your mentor?"
  var singleSelectionOptions1: [String] = ["Weekly", "Bi-weekly", "Monthly"]

  var singleSelectionTitle2: String = "How do you prefer to connect with your mentor?"
  var singleSelectionOptions2: [String] = ["Weekly", "Bi-weekly", "Monthly"]

  var multiSelectionTitle1: String = "What kind of mentor vibe are you looking for?"
  var multiSelectionOptions1: [String] = ["Cheerleader (motivating & encouraging)", "Challenger (pushes you to grow)", "Accountability partner"]

  var multiSelectionTitle2: String = "What kind of mentor vibe are you looking for?"
  var multiSelectionOptions2: [String] = ["Cheerleader (motivating & encouraging)", "Challenger (pushes you to grow)", "Accountability partner"]

  var multiSelectionTitle3: String = "What kind of mentor vibe are you looking for?"
  var multiSelectionOptions3: [String] = ["Cheerleader (motivating & encouraging)", "Challenger (pushes you to grow)", "Accountability partner"]

  var multiSelectionTitle4: String = "What kind of mentor vibe are you looking for?"
  var multiSelectionOptions4: [String] = ["Cheerleader (motivating & encouraging)", "Challenger (pushes you to grow)", "Accountability partner"]
}

class MentorViewModel: QuizViewModelProtocol, ObservableObject {
  var path = Screen.confirmation

  var title: String = "Ready to level up? Your mentor quest starts here!"
  var subtitle: String = "We’re excited to see all you accomplish! Next, let’s gather a few details about your areasof growth to ensure we find the perfect mentor for you."

  var selectTitle1: String = "How do you usually learn best?"
  var selectOptions1: [(value: String, text: String?)] = options

  var selectTitle2: String = "How do you usually learn best?"
  var selectOptions2: [(value: String, text: String?)] = options


  var singleSelectionTitle1: String = "How do you prefer to connect with your mentor?"
  var singleSelectionOptions1: [String] = ["Weekly", "Bi-weekly", "Monthly"]

  var singleSelectionTitle2: String = "How do you prefer to connect with your mentor?"
  var singleSelectionOptions2: [String] = ["Weekly", "Bi-weekly", "Monthly"]

  var multiSelectionTitle1: String = "What kind of mentor vibe are you looking for?"
  var multiSelectionOptions1: [String] = ["Cheerleader (motivating & encouraging)", "Challenger (pushes you to grow)", "Accountability partner"]

  var multiSelectionTitle2: String = "What kind of mentor vibe are you looking for?"
  var multiSelectionOptions2: [String] = ["Cheerleader (motivating & encouraging)", "Challenger (pushes you to grow)", "Accountability partner"]

  var multiSelectionTitle3: String = "What kind of mentor vibe are you looking for?"
  var multiSelectionOptions3: [String] = ["Cheerleader (motivating & encouraging)", "Challenger (pushes you to grow)", "Accountability partner"]

  var multiSelectionTitle4: String = "What kind of mentor vibe are you looking for?"
  var multiSelectionOptions4: [String] = ["Cheerleader (motivating & encouraging)", "Challenger (pushes you to grow)", "Accountability partner"]
}


let options: [(value: String, text: String?)] = [
  (value: "1", text: "Reading"),
  (value: "2", text: "Speaking"),
  (value: "3", text: "Watching Videos")
]
