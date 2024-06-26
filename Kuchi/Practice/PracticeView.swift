

import SwiftUI

/// Displays the practice view with question and potential answers (choices).
struct PracticeView: View {
  @Binding var challengeTest: ChallengeTest?
  @Binding var userName: String
  
  var body: some View {
    if let challenge = challengeTest {
        ChallengeView(challengeTest: challenge)
    } else {
      CongratulationsView(userName: userName)
    }
  }
}

struct PracticeView_Previews: PreviewProvider {
  @State static var numberOfAnswered: Int = 0
  static let challengeTest = ChallengeTest(
    challenge: Challenge(question: "おねがい　します", pronunciation: "Onegai shimasu", answer: "Please"),
    answers: ["Thank you", "Hello", "Goodbye"]
  )
  
  static var previews: some View {
    return PracticeView(
      challengeTest: .constant(challengeTest),
      userName: .constant("Johnny Swift")
    )
  }
}
