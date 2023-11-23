//
//  NoteDetail.swift
//  NotesWS
//
//  Created by Eduardo Conti on 22/11/23.
//

import SwiftUI

struct NoteDetail: View {
var note: Note

    var body: some View {
        NavigationStack {
            
            Text(note.content)
                .padding()
                .navigationTitle(note.title)
        }
    }
}

#Preview {
    NoteDetail(note: Note(title: "Example 1", content: "No description"))
}
