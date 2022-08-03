import SwiftUI

struct MeetingTimerView: View {
    
    let speakers: [ScrumTimer.Speaker]
    let theme: Theme
    
    private var currentSpeaker: String {
          speakers.first(where: { !$0.isCompleted })?.name ?? "Someone"
      }
    
    var body: some View {
        Circle().strokeBorder(lineWidth: 24, antialiased: true)
            .overlay {
                VStack {
                Text(currentSpeaker)
                .font(.title)
                Text("is speaking")
                }
                .accessibilityElement(children: .combine)
                .foregroundStyle(theme.accentColor)
            }
    }
}

struct MeetingTimerView_Preview: PreviewProvider {
    static var speakers: [ScrumTimer.Speaker] {
          [ScrumTimer.Speaker(name: "Bill", isCompleted: true), ScrumTimer.Speaker(name: "Cathy", isCompleted: false)]
      }
      
    static var previews: some View {
        MeetingTimerView(speakers: speakers, theme: .yellow)
    }
}
