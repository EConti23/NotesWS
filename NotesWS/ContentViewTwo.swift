//
//  ContentViewTwo.swift
//  NotesWS
//
//  Created by Eduardo Conti on 15/11/23.
//
import SwiftUI

struct ContentViewTwo: View {
   @State var notes: [Note] = [
    Note(title: "Example 1", content: "No description"),
    Note(title: "Example 2", content: "No description")
    ]
    
    var body: some View {
        NavigationStack{
            List(notes) { note in
                    NavigationLink {
                        NoteDetail(note: note)
                    } label: {
                        VStack(alignment: .leading) {
                            Text(note.title)
                                .fontWeight(.bold)
                                .font(.title3)
                            Text(note.content)
                        }
                    }
                }

                .navigationTitle("Notes")
                .toolbar {
                    ToolbarItem(placement: .bottomBar) {
                        NavigationLink(destination: AddNoteView(notes: $notes)) {
                            Image(systemName: "square.and.pencil")
                                .foregroundColor(.black)
                                .accessibilityLabel("New note button")
                               
                        }
                    }
                }
            }

                                    }
                                }

#Preview {
    ContentViewTwo()
}
