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
        NavigationView {
            Group {
                if contacts.isEmpty {
                    NoContactsView()
                } else {
                    HasContactsView(contacts: contacts)
                }
            }
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        viewModel.addPerson()
                    } label: {
                        Image(systemName: "plus.circle.fill")
                            .resizable()
                            .frame(width: 40, height: 40)
                            .foregroundColor(.blue)
                    }
                }
            }
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

struct Contact: View {
    let person: Person

    var body: some View {
        VStack {
            Label(person.name, systemImage: "person")
        }
        .padding()
    }
}
