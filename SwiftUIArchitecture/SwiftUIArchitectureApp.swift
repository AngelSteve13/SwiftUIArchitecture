//
//  SwiftUIArchitectureApp.swift
//  SwiftUIArchitecture
//
//  Created by Angel Trejo Flores on 15/01/24.
//

import SwiftUI

@main
struct SwiftUIArchitectureApp: App {
    var body: some Scene {
        WindowGroup {
            SingleAnswerQuestion(title: "1 of 2", question: "What's Mike's nationality?", options: [
                "Portuguese",
                "American",
                "Greek",
                "Canadian"
            ], selection: { _ in }
            )
        }
    }
}
