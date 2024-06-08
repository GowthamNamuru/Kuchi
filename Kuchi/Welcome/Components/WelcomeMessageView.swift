//
//  WelcomeMessageView.swift
//  Kuchi
//
//  Created by Gowtham Namuru on 08/06/24.
//

import SwiftUI

struct WelcomeMessageView: View {
    var body: some View {
        Label {
            VStack(alignment: .leading) {
                Text("Welcome to")
                    .font(.headline)
                    .bold()
                Text("Kuchi")
                    .font(.largeTitle)
                    .bold()
            }
            .foregroundStyle(Color.red)
            .lineLimit(1)
            .padding(.horizontal)

        } icon: {
            LogoImage()
        }
        .labelStyle(HorizontallyAlignedLabelStyle())
    }
}

#Preview {
    WelcomeMessageView()
}
