//
//  ReflecRoutes.swift
//  Application
//
//  Created by Vinicius Augusto Dilay de Paula on 30/04/20.
//

import Foundation
import LoggerAPI
import KituraContracts
import SwiftKueryORM
import SwiftKuery

func initializeReflectionRoutes(app: App) {
    app.router.post  ("/reflection", handler: addReflection)
    app.router.get   ("/reflection", handler: getReflection)
    app.router.get   ("/reflection", handler: getAllReflections)
    app.router.put   ("/reflection", handler: changeReflection)
    app.router.delete("/reflection", handler: deleteReflection)
}


func addReflection(reflection: Reflection, completion: @escaping(Reflection?, RequestError?) -> Void) {
    let storedReflection = reflection

    storedReflection.save(completion)
}

func getReflection(id: Int, completion: @escaping(Reflection?, RequestError?) -> Void) {
    Reflection.find(id: id, completion)
}

func getAllReflections(params: ReflecParams?, completion: @escaping ([Reflection]?, RequestError?) -> Void) -> Void {
    Reflection.findAll(matching: params, completion)
}

func changeReflection(id: String, reflection: Reflection, completion: @escaping(Reflection?, RequestError?) -> Void) {
    reflection.update(id: id, completion)
}

func deleteReflection(id: String, completion: @escaping (RequestError?) -> Void) {
    Reflection.delete(id: id, completion)
}
