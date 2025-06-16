import SwiftUI

struct MessageBubbleShape: Shape {
    func path(in rect: CGRect) -> Path {
        let cornerRadius: CGFloat = 16
        let tailSize: CGFloat = 12
        var path = Path()
        let bubbleRect = CGRect(x: 0, y: 0, width: rect.width, height: rect.height - tailSize)
        path.addRoundedRect(in: bubbleRect, cornerSize: CGSize(width: cornerRadius, height: cornerRadius))

        path.move(to: CGPoint(x: rect.midX - tailSize, y: rect.height - tailSize))
        path.addLine(to: CGPoint(x: rect.midX, y: rect.height))
        path.addLine(to: CGPoint(x: rect.midX + tailSize, y: rect.height - tailSize))
        path.closeSubpath()
        return path
    }
}
