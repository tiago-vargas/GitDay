//
//  HasContactsView.swift
//  RewritingTheGitHistory
//
//  Created by Tiago Vargas on 20/07/23.
//

import SwiftUI

struct HasContactsView: View {
    var contacts: [Person]
    var body: some View {
        List {
            ForEach(contacts) { contact in
                Contact(person: contact)
            }
        }
    }
}