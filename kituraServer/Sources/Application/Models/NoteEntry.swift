//
//  NoteEntry.swift
//  Application
//
//  Created by Vinicius Augusto Dilay de Paula on 24/04/20.
//

import Foundation
import KituraContracts
import SwiftKueryORM

struct NoteEntryParams: QueryParams {
    var label: String?
}
struct NoteEntry: Model{
    var id: String?
    var text: String
    var label: String
    var date: Date
}
 
 
