

import SwiftUI

struct CongratulationsView: View {
  let avatarSize: CGFloat = 120
  let userName: String

    @ObservedObject var challengesViewModel = ChallengesViewModel()

  init(userName: String) {
    self.userName = userName
  }
  
  var body: some View {
      VStack {
          Spacer()
          Text("Congratulations!")
              .font(.title)
              .foregroundStyle(Color.gray)

          ZStack {
              VStack(spacing: 0) {
                  Rectangle()
                      .frame(height: 90)
                      .foregroundStyle(
                        Color(red: 0.5, green: 0, blue: 0).opacity(0.2))

                  Rectangle()
                      .frame(height: 90)
                      .foregroundStyle(
                        Color(red: 0.6, green: 0.1, blue: 0.1).opacity(0.4))
              }

              Image(systemName: "person.fill")
                  .resizable()
                  .padding()
                  .frame(width: avatarSize, height: avatarSize)
                  .background(Color.white.opacity(0.5))
                  .clipShape(Circle())
                  .shadow(radius: 4)

              VStack {
                  Spacer()
                  Text(userName)
                      .font(.largeTitle)
                      .foregroundStyle(.white)
                      .shadow(radius: 7)
              }
              .padding()
          }
          .frame(height: 180)

          Text("You're awesome!")
              .fontWeight(.bold)
              .foregroundStyle(Color.gray)

          Spacer()

          Button(action: {
              challengesViewModel.restart()
          }, label: {
              Text("Play Again")
          })
          .padding(.top)

      }
  }
}

struct CongratulationsView_Previews: PreviewProvider {
  static var previews: some View {
    CongratulationsView(userName: "Johnny Swift")
      .environmentObject(ChallengesViewModel())
  }
}
