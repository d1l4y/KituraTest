//
//  NoteEntry.swift
//  Application
//
//  Created by Vinicius Augusto Dilay de Paula on 24/04/20.
//

import Foundation
import KituraContracts

struct NoteEntryParams: QueryParams {
    var label: String?
}
struct NoteEntry: Codable{
    var id: String?
    var text: String
    var label: String
    var date: Date
}
 
