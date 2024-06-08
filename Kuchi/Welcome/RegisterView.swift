//
//  RegisterView.swift
//  Kuchi
//
//  Created by Gowtham Namuru on 08/06/24.
//

import SwiftUI

struct RegisterView: View {
    @EnvironmentObject var userManager: UserManager
    @FocusState var nameFieldFocused: Bool

    var body: some View {
        VStack {
            Spacer()
            WelcomeMessageView()
            TextField("Type your name...", text: $userManager.profile.name)
                .focused($nameFieldFocused)
                .submitLabel(.done)
                .onSubmit(registerUser)
                .bordered()
            HStack {
                Spacer()
                Text("\(userManager.profile.name.count)")
                    .font(.caption)
                    .foregroundStyle(
                        userManager.isUserNameValid() ? .green : .red
                    )
                    .padding(.trailing)
            }
            .padding(.bottom)

            HStack {
                Spacer()

                Toggle(isOn: $userManager.settings.rememberUser) {
                    Text("Remeber me")
                        .font(.subheadline)
                        .foregroundStyle(.gray)
                }
                .fixedSize()
            }
            Button(action: self.registerUser) {
                HStack {
                    Image(systemName: "checkmark")
                        .resizable()
                        .frame(width: 16, height: 16, alignment: .center)
                    Text("OK")
                        .font(.body)
                        .bold()
                }
            }
            .bordered()
            .disabled(!userManager.isUserNameValid())

            Spacer()
        }
        .padding()
        .background(WelcomeBackgroundImage())
    }
}

extension RegisterView {
    func registerUser() {
        nameFieldFocused = false
        if userManager.settings.rememberUser {
            userManager.persistProfile()
        } else {
            userManager.clear()
        }

        userManager.persistSettings()
        userManager.setRegistered()
    }
}

#Preview {
    RegisterView()
        .environmentObject(UserManager(name: "Ray"))
}
