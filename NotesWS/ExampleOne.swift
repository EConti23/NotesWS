//
//  ExampleOne.swift
//  NotesWS
//
//  Created by Eduardo Conti on 17/11/23.
//
import SwiftUI

struct ExampleOne: View {
    @State private var text: String = ""
    
    func placeOrder() { }
    func adjustOrder() { }
    func cancelOrder() { }
    
    var body: some View {
        NavigationStack {
            VStack {
                TextEditor(text: $text)
                    .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
                    .background(Color(.systemBackground))
                    .padding()
            }
            .navigationBarTitle("Example 1")
            .toolbar {
                ToolbarItem {
                    HStack {
                        Button() {
                            print("About tapped!")
                        } label: {
                            Image(systemName: "square.and.arrow.up")
                                .foregroundColor(.yellow)
                        }
                        Menu {
                                Button("Find in the note", action: placeOrder)
                                Button("Move the note", action: adjustOrder)
                                Button("Delete", action: cancelOrder)
                        } label: {
                            Image(systemName: "ellipsis.circle")
                                .foregroundColor(.yellow)
                        }
                    }
                }
                ToolbarItemGroup(placement: .bottomBar) {
                    Button() {
                        print("About tapped!")
                    } label: {
                        Image(systemName: "checklist")
                            .foregroundColor(.yellow)
                    }
                    Spacer()
                    Button() {
                        print("About tapped!")
                    } label: {
                        Image(systemName:"camera")
                            .foregroundColor(.yellow)
                    }
                    Spacer()
                    Button() {
                        print("About tapped!")
                    } label: {
                        Image(systemName: "pencil.tip.crop.circle")
                            .foregroundColor(.yellow)
                    }
                    Spacer()
                    Button() {
                        print("About tapped!")
                    } label: {
                        Image(systemName:"square.and.pencil")
                            .foregroundColor(.yellow)
                    }
                    }
                }
            }

        }
    }

#Preview {
    ExampleOne()
}
