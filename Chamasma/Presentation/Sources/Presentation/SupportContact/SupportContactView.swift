//
//  SupportContactView.swift
//
//
//  Created by Giga Khizanishvili on 03.07.23.
//

import Chat
import LoremSwiftum
import SwiftUI

struct SupportContactView: View {
    // MARK: - Properties
    private static let senderUser = Chat.User(
        id: UUID().uuidString,
        name: Lorem.fullName,
        avatarURL: URL(
            string: "https://cdn.pixabay.com/photo/2016/08/08/09/17/avatar-1577909_1280.png"
        ),
        isCurrentUser: true
    )

    private static let supportUser = Chat.User(
        id: UUID().uuidString,
        name: Lorem.fullName,
        avatarURL: URL(
            string: "https://www.shareicon.net/data/128x128/2016/08/18/809741_support_512x512.png"
        ),
        isCurrentUser: false
    )

    @State private var messages: [Message] = [
        .init(
            id: UUID().uuidString,
            user: senderUser,
            createdAt: .now,
            text: Lorem.sentence,
            attachments: [],
            recording: nil,
            replyMessage: nil
        ),
        .init(
            id: UUID().uuidString,
            user: supportUser,
            createdAt: .now,
            text: Lorem.sentence,
            attachments: [],
            recording: nil,
            replyMessage: nil
        ),
    ]

    // MARK: - Body
    var body: some View {
        ChatView(messages: messages) { draftMessage in
            messages.append(
                Message(
                    id: UUID().uuidString,
                    user: Self.senderUser,
                    status: .sent,
                    createdAt: .now,
                    text: draftMessage.text,
                    attachments: draftMessage.attachments,
                    recording: draftMessage.recording,
                    replyMessage: draftMessage.replyMessage
                )
            )
        }
        .chatNavigation(
            title: Self.supportUser.name,
            status: "Online",
            cover: Self.supportUser.avatarURL
        )
    }
}

// MARK: - Previews
struct SupportContactView_Previews: PreviewProvider {
    static var previews: some View {
        SupportContactView()
    }
}
