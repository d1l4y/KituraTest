//
//  EntryRoutes.swift
//  Application
//
//  Created by Vinicius Augusto Dilay de Paula on 24/04/20.
//

import Foundation
import LoggerAPI
import Kitura

var entries: [NoteEntry] = []

func initializeEntryRoutes(app: App) {
    app.router.post("/entries", handler: addEntry)
}

func addEntry(entry: NoteEntry, completion: @escaping(NoteEntry?,RequestError?) -> Void) {
    var storeEntry = entry
    storeEntry.id = entries.count.value
    entries.append(storeEntry)
    completion(storeEntry, nil)
    
}

func getAllEntries(completion: @escaping([NoteEntry]?,RequestError?) -> Void) {
    
}
