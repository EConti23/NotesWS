//
//  AddNoteView.swift
//  NotesWS
//
//  Created by Eduardo Conti on 22/11/23.
//

import SwiftUI


struct AddNoteView: View {
    @State private var newNote: String = ""
    @State private var newTitle: String = ""
    @Binding var notes: [Note]
      
    @FocusState private var newNoteIsFocused: Bool

    var body: some View {
        NavigationStack {
            VStack {
                TextField(
                        "Title",
                        text: $newTitle
                    )
                    .font(.system(size: 25))
                    .bold()
                    .padding()
                
                TextEditor(text: $newNote)
                    .padding()
                    .focused($newNoteIsFocused)
                
            }
            .toolbar {
                ToolbarItem {
                    Button() {
                        print("about tapped!")
                        makeNote()
                        newNoteIsFocused = false
                    } label: {
                        Text("Done")
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    }
                }
            }
            .navigationTitle("Notes")
        }
    }
    func makeNote() {
        let notino = Note(title: newTitle, content: newNote)
                notes.append(notino)
        print(notes[notes.count-1])
        }
}

#Preview {
    AddNoteView(notes: .constant([Note(title: "abc", content: "abc")]))
}
