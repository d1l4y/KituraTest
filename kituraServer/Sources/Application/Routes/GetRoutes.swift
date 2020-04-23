//
//  GetRoutes.swift
//  Application
//
//  Created by Vinicius Augusto Dilay de Paula on 23/04/20.
//

import Foundation
import LoggerAPI
import KituraContracts

func initializeGetRoutes(app: App) {
    app.router.get("/hello") {
        request,response,next in
        
        response.headers["Content-Type"] = "text/txt"
        response.send("Hello Kitura")
        next()
    }
}
