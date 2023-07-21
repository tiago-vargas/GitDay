//
//  ViewModel.swift
//  RewritingTheGitHistory
//
//  Created by Caio de Almeida Pessoa on 20/07/23.
//

import SwiftUI

class ViewModel: ObservableObject {
    @Published var contacts: [Person] = []
//        @Published var contacts: [Person] = [Person(name: "Fulano"), Person(name: "Deltrano")]
    func addPerson(){
        contacts.append(Person(name: "Caio"))
    }
}

