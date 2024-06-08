//
//  KuchiApp.swift
//  Kuchi
//
//  Created by Gowtham Namuru on 08/06/24.
//

import SwiftUI

@main
struct KuchiApp: App {
    let userManager = UserManager()

    init() {
        userManager.load()
    }

    var body: some Scene {
        WindowGroup {
            StarterView()
                .environmentObject(userManager)
        }
    }
}
