//
//  AuthRoutes.swift
//  Application
//
//  Created by Vinicius Augusto Dilay de Paula on 28/04/20.
//

import Foundation
import Credentials
import CredentialsHTTP


func initializeBasicAuth(app : App) {
    let credentials = Credentials()
    let basicCredentials = CredentialsHTTPBasic(verifyPassword: {
        username, password, callback in
        
        UserAuth.find(id: username){ UserAuth, error in
            if let user = UserAuth {
                if password == user.password {
                    callback(UserProfile(id: username, displayName: username, provider: "HTTPBAsic"))
                } else {
                    callback(nil)
                }
            }
        }
    })
    
        
    credentials.register(plugin: basicCredentials)
    app.router.all("/entries", middleware: credentials)
}

