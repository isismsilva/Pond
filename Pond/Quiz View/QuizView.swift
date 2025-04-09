//
//  QuizView.swift
//  Pond
//
//  Created by Isis Silva on 4/7/25.
//

import SwiftUI
import Playbook

struct QuizView<ViewModel: QuizViewModelProtocol>: View {
  @State private var selectOption1: String = "Choose an option"
  @State private var selectOption2: String = "Choose an option"
  @State var viewModel: ViewModel
  @EnvironmentObject private var navigation: NavigationViewModel

  var body: some View {
    VStack(alignment: .leading) {
      HeaderView(title: viewModel.title, subtitle: viewModel.subtitle)

      ScrollView {
        HStack(spacing: Spacing.large) {
          PBSelect(
            title: viewModel.selectTitle1,
            options: viewModel.selectOptions1,
            style: .default,
            selected: $selectOption1) { selected in
              selectOption1 = selected
          }

          PBSelect(
            title: viewModel.selectTitle2,
            options: viewModel.selectOptions2,
            style: .default,
            selected: $selectOption2) { selected in
              selectOption2 = selected
          }
        }
        .padding()

        HStack(spacing: Spacing.large) {
          SingleSelectionView(
            title: viewModel.singleSelectionTitle1,
            option1: viewModel.singleSelectionOptions1[0],
            option2: viewModel.singleSelectionOptions1[1],
            option3: viewModel.singleSelectionOptions1[2]
          )
          .frame(maxWidth: .infinity, alignment: .leading)
          SingleSelectionView(
            title: viewModel.singleSelectionTitle2,
            option1: viewModel.singleSelectionOptions2[0],
            option2: viewModel.singleSelectionOptions2[1],
            option3: viewModel.singleSelectionOptions2[2]
          )
          .frame(maxWidth: .infinity, alignment: .leading)
        }
        .padding()

        HStack(spacing: Spacing.large) {
          MultiSelectionView(
            title: viewModel.multiSelectionTitle1,
            option1: viewModel.multiSelectionOptions1[0],
            option2: viewModel.multiSelectionOptions1[1],
            option3: viewModel.multiSelectionOptions1[2]
          )
          MultiSelectionView(
            title: viewModel.multiSelectionTitle2,
            option1: viewModel.multiSelectionOptions2[0],
            option2: viewModel.multiSelectionOptions2[1],
            option3: viewModel.multiSelectionOptions2[2]
          )
        }
        .padding()

        HStack(spacing: Spacing.large) {
          MultiSelectionView(
            title: viewModel.multiSelectionTitle3,
            option1: viewModel.multiSelectionOptions3[0],
            option2: viewModel.multiSelectionOptions3[1],
            option3: viewModel.multiSelectionOptions3[2]
          )
          MultiSelectionView(
            title: viewModel.multiSelectionTitle4,
            option1: viewModel.multiSelectionOptions4[0],
            option2: viewModel.multiSelectionOptions4[1],
            option3: viewModel.multiSelectionOptions4[2]
          )
        }
        .padding()

        PBButton(fullWidth: true, title: "Finish") {
          navigation.goTo(newPath: viewModel.path)
        }
          .padding(.top, 60)
          .padding(.horizontal, 300)
      }
      .padding()
    }
  }
}

//#Preview {
//  registerFonts()
//  return QuizView(viewModel: MenteeViewModel(), path: .constant())
//}


struct SelectOptions {
  let value: String
  let text: String
}

