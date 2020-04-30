//
//  Reflection.swift
//  Application
//
//  Created by Vinicius Augusto Dilay de Paula on 30/04/20.
//

import Foundation
import KituraContracts
import SwiftKueryORM
import SwiftKuery

struct ReflecParams : QueryParams {
    var id : Int?
}

struct Reflection : Model {
    var text  : String
    var date  : String
    var id    : Int?
    
}
