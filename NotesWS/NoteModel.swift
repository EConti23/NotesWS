//
//  NoteModel.swift
//  NotesWS
//
//  Created by Eduardo Conti on 22/11/23.
//

import Foundation

struct Note: Identifiable {
    
    let id = UUID()
    let title: String
    let content: String
}

