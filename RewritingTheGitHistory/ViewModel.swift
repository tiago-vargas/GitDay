//
//  ViewModel.swift
//  RewritingTheGitHistory
//
//  Created by Tiago Vargas on 21/07/23.
//

import SwiftUI

class ViewModel: ObservableObject {
//    var contacts: [Person] = []
    var contacts: [Person] = [Person(name: "Fulano"), Person(name: "Deltrano")]

    func buildContactsView() -> some View {
        return Group {
            if contacts.isEmpty {
                NoContactsView()
            } else {
                HasContactsView(contacts: contacts)
            }
        }
    }
}
