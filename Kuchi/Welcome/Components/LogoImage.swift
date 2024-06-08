//
//  LogoImage.swift
//  Kuchi
//
//  Created by Gowtham Namuru on 08/06/24.
//

import SwiftUI

struct LogoImage: View {
    var body: some View {
        Image(systemName: "table")
            .resizable()
            .frame(width: 30, height: 30)
            .overlay(Circle().stroke(Color.gray, lineWidth: 1))
            .background(Color(white: 0.9))
            .clipShape(Circle())
            .foregroundStyle(Color.red)
    }
}

#Preview {
    LogoImage()
}
