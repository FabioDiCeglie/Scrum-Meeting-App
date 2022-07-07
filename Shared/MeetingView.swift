import SwiftUI

struct MeetingView: View {
    var body: some View {
        VStack {
            ProgressView(value: 5, total: 15)
            HStack {
                VStack(alignment: .leading){
                Text("Seconds Elapsed")
                        .font(.caption)
                Label("300", systemImage: "hourglass.bottomhalf.fill")
                }
                Spacer()
                VStack(alignment: .trailing){
                Text("Ciao")
                        .font(.caption)
                Label("600", systemImage: "hourglass.bottomhalf.fill")
                }
            }
        }
    }
}


struct MeetingView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
       
            MeetingView()
        }
    }
}
