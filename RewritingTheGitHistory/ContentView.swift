//
//  ContentView.swift
//  RewritingTheGitHistory
//
//  Created by Tiago Vargas on 20/07/23.
//

import SwiftUI

struct ContentView: View {
    var contacts: [Person] = []

    var body: some View {
        if contacts.isEmpty {
            NoContactsView()
        } else {
            HasContactsView()
        }
    }
}

struct Person: Identifiable {
    let id = UUID()
    let name: String
}

struct ContentView_Previews: PreviewProvider {
//    static var contacts: [Person] = []
    static var contacts: [Person] = [Person(name: "Fulano"), Person(name: "Deltrano")]

    static var previews: some View {
        ContentView(contacts: contacts)
    }
}
