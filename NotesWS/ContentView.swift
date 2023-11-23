//
//  ContentView.swift
//  NotesWS
//
//  Created by Eduardo Conti on 07/11/23.
//
import SwiftUI

struct ContentView: View {
    
    @State var notes: [Note] = [
     Note(title: "Example 1", content: "monday  No description"),
     Note(title: "Example 2", content: "tuesday  No description")
     ]
    
    @State private var isEditing = false
    
    var body: some View {
    
        NavigationStack {
            VStack {
                List {
                    NavigationLink {ContentViewTwo()
                    } label: {
                        HStack {
                            Image(systemName: "folder")
                                .foregroundStyle(.black)
                            Text("Notes")
                            Spacer()
                            Text("2")
                                .foregroundStyle(.gray)
                        }
                    }
                            
                        NavigationLink {
                        } label: {
                            HStack {
                                Image(systemName: "trash")
                                    .foregroundStyle(.black)
                                Text("Deleted")
                                Spacer()
                                Text("0")
                                    .foregroundStyle(.gray)
                            }
                        }
                }
                .environment(\.editMode, .constant(isEditing ? EditMode.active : EditMode.inactive))
            }
            .navigationTitle("Folders")
            
            .toolbar {
                ToolbarItem {
                    Button("Edit") {
                        isEditing.toggle()
                    }
                    .foregroundColor(.black)
                }
                ToolbarItemGroup(placement: .bottomBar) {
                    NavigationLink(destination: AddNoteView(notes: $notes)) {
                        Image(systemName: "square.and.pencil")
                            .foregroundColor(.black)
                            .accessibilityLabel("New note button")
                    }
                }
            }
        } .accentColor(.black)
    }

}

#Preview {
    ContentView()
}
