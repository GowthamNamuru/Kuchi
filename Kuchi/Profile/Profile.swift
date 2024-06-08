//
//  Profile.swift
//  Kuchi
//
//  Created by Gowtham Namuru on 08/06/24.
//

struct Profile: Codable {
    var name: String

    init(name: String) {
        self.name = name
    }

    init() {
        self.name = ""
    }
}
