//
//  Mentor.swift
//  Pond
//
//  Created by Isis Silva on 4/10/25.
//

import Foundation

struct Mentor: Codable, Identifiable {
  let id: Int
  var userName: String
  var imageName: String
  var userTerritory: String
  var userTitle: String
  var about: String
  var displayAvatar: Bool
}
