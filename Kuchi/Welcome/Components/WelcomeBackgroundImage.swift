//
//  WelcomeBackgroundImage.swift
//  Kuchi
//
//  Created by Gowtham Namuru on 08/06/24.
//

import SwiftUI

struct WelcomeBackgroundImage: View {
    var body: some View {
        GeometryReader { geometry in
            Image("welcome-background", bundle: nil)
                .resizable()
                .aspectRatio(1 / 1, contentMode: .fill)
                .frame(width: geometry.size.width, alignment: .center)
                .edgesIgnoringSafeArea(.all)
                .saturation(0.5)
                .blur(radius: 5)
            .opacity(0.08)
        }
    }
}

#Preview {
    WelcomeBackgroundImage()
}
