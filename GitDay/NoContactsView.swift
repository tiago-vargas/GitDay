//
//  NoContactsView.swift
//  RewritingTheGitHistory
//
//  Created by Tiago Vargas on 20/07/23.
//

import SwiftUI

struct NoContactsView: View {
    var body: some View {
        VStack {
            Image(systemName: "person.fill")
                .resizable()
                .frame(width: 240, height: 240)
                .scaledToFit()
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("No contacts yet")
                .font(.largeTitle)
        }
        .padding()
    }
}
