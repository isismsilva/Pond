//
//  Mocks.swift
//  Pond
//
//  Created by Isis Silva on 4/9/25.
//

import Foundation

enum Mocks {
  static let avatars: [String] = ["Andrew", "Anna", "Caitie", "Lu", "Nida", "Pat", "Ronnie"]


  static let mentors: [Mentor] = [
    .init(
      id: 1,
      userName: "Ben Klang",
      imageName: "Ben",
      userTerritory: "PHL",
      userTitle: "Vice President of Business Technology",
      about: """
      Experienced technology leader with a deep technical background in systems and software development. Focused on systemic improvement by understanding business processes end-to-end, delivering value at all points in the chain. Passionate about people and coaching teams to perform at their maximum ability.
  """,
      displayAvatar: false
    ),
    .init(
      id: 2,
      userName: "Jenny Gray",
      imageName: "Jenny",
      userTerritory: "PHL",
      userTitle: "VP of Application Development and Infrastructure",
      about: """
      As a transformative technology leader, I drive innovation, build and empower high performing technology teams, and deliver results. 

      With 15+ years of technology leadership experience, I thrive on the intersection of technology and business strategy, creating solutions that move organizations forward. I’ve successfully navigated the ever changing landscape of IT, from startups to large enterprises, transforming them into highly efficient and agile technology-driven organizations. My passion lies in shaping IT strategies that not only align with business objectives but also drive growth and innovation. I’ve governed multi-million-dollar budgets ($30M+) and directed teams of 150+ IT professionals, including Application Development, Platform Engineering, Site Reliability Engineering, Quality Assurance, and Information Security teams. My leadership extends beyond technology; it’s about challenging and inspiring people to achieve excellence and creating an environment where creativity flourishes.

      I’ve orchestrated digital transformation initiatives, redefined IT operating models, and championed agile methodologies for product development. I’ve led teams responsible for developing and operating complex systems and played a pivotal role in designing and implementing cutting-edge solutions.

      Driving digital innovation is a team sport that I know how to captain. Let’s connect!
  """,
      displayAvatar: false
    ),
    .init(
      id: 3,
      userName: "Marc Sule",
      imageName: "Marc",
      userTerritory: "PHL",
      userTitle: "Chief Business Technology Officer",
      about: """
      Marc Sule joins the company from leading promotional products company, alphabroder where he served as Chief Information Officer for six years. Prior to that, he held leadership positions at major brands like CVS Health®, Urban Outfitters, eBay, and GSI Commerce, garnering over 30 years of valued experience within the technology sector.
      As the new CBTO, Sule will be responsible for ensuring that the company’s Business Technology (BT) employees are empowered to deliver the highest value features and cutting-edge solutions to support both the customer and employee experience, and that applications and infrastructure are equipped to scale to meet the growing demand. Sule brings a unique passion for people, and with that, will focus on enhancing the already strong culture within Power’s BT division to safeguard the happiness of employees.
  """,
      displayAvatar: false
    ),
    .init(
      id: 4,
      userName: "Lauren Klinefelter",
      imageName: "Lauren",
      userTerritory: "PHL",
      userTitle: "Director of Application Development",
      about: """
      Lauren is based in the Philadelphia area and is a Master of Science in Information Systems graduate of Drexel University. She has been working in technology for over 15 years in various industries including small business, non-profit, higher education, health care startup and large corporations.  She specializes in creating collaborative software engineering teams that support one another and lean on each others’ strengths.  She has served on strategic teams at multiple organizations, including a M&A operationalization team, content delivery team, NCT delivery team and a 2021 Board team.
      Lauren is a teacher and volunteer, with a goal of encouraging young people to join the technology community.  She’s taught classes at AIGA’s Philadelphia Chapter on responsive design/development, presented at UArts on Web Life and Community, and led a panel for Penn LPS Coding Boot Camp for graduates of the program and others. She spends spare time with her family and friends and traveling.
  """,
      displayAvatar: false
    ),
    .init(
      id: 5,
          userName: "Nida Ghuman",
          imageName: "Nida",
          userTerritory: "PHL",
          userTitle: "Senior Software Engineer",
      about: """
      As a UX Engineer, I find my passion in the intersection of design and technology, particularly within the realm of Design Systems. My commitment to continuous improvement and tackling new challenges drives me to stay ahead of UX trends, ensuring I bring my utmost dedication to every project. With an attitude of perpetual learning and growth, I am always eager to enhance my skills and contribute to innovative solutions.
  """,
          displayAvatar: false
         )
  ]
}
