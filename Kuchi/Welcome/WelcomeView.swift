//
//  WelcomeView.swift
//  Kuchi
//
//  Created by Gowtham Namuru on 08/06/24.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        ZStack {
            Image("welcome-background", bundle: nil)
                .resizable()
                .aspectRatio(1 / 1, contentMode: .fill)
                .edgesIgnoringSafeArea(.all)
                .saturation(0.5)
                .blur(radius: 5)
                .opacity(0.08)
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
                Image(systemName: "table")
                    .resizable()
                    .frame(width: 30, height: 30)
                    .overlay(Circle().stroke(Color.gray, lineWidth: 1))
                    .background(Color(white: 0.9))
                    .clipShape(Circle())
                    .foregroundStyle(Color.red)
            }
            .labelStyle(HorizontallyAlignedLabelStyle())
        }
    }
}

#Preview {
    WelcomeView()
}
