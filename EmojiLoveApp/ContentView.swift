import SwiftUI

struct ContentView: View {
    @State private var emoji: String = ContentView.randomEmoji()
    @State private var loveMessage: String?

    let loveMessages = [
        "Je t'adore!",
        "Je t'aime!",
        "Tu es magnifique!",
        "Bisous!",
        "Mon coeur!"
    ]

    var body: some View {
        ZStack {
            Text(emoji)
                .font(.system(size: 120))
                .onTapGesture {
                    withAnimation {
                        loveMessage = loveMessages.randomElement()
                    }
                    DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                        withAnimation { loveMessage = nil }
                    }
                }
            if let loveMessage = loveMessage {
                Text(loveMessage)
                    .padding(12)
                    .background(Color.white.opacity(0.9))
                    .clipShape(RoundedRectangle(cornerRadius: 16))
                    .offset(y: -150)
                    .transition(.opacity)
            }
        }
        .onAppear {
            emoji = ContentView.randomEmoji()
        }
    }

    static func randomEmoji() -> String {
        let niceEmojis = ["😊", "😄", "😍", "🥰", "😘", "😎", "😁"]
        if Double.random(in: 0..<1) < 0.1 {
            return "💩"
        }
        return niceEmojis.randomElement() ?? "🙂"
    }
}

#Preview {
    ContentView()
}
