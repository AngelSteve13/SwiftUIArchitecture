//
//  ContentView.swift
//  SwiftUIArchitecture
//
//  Created by Angel Trejo Flores on 15/01/24.
//

import SwiftUI

struct SingleAnswerQuestion: View {
    let title: String
    let question: String
    let options: [String]
    let selection: (String) -> Void
    
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0.0) {
            QuestionHeader(title: title, question: question)
            
            ForEach(options, id: \.self) { option in
                SingleTextSelectionCell(text: option, selection: {
                    selection(option)
                })
            }
            
            Spacer()
        }
    }
}

#Preview {
    Group {
        SingleAnswerQuestionsTestView()
        .preferredColorScheme(.dark)
        .environment(\.sizeCategory, .extraExtraExtraLarge)
    }
}

struct SingleAnswerQuestionsTestView: View {
    @State var selection: String = "none"
    
    var body: some View {
        VStack {
            SingleAnswerQuestion(title: "1 of 2", question: "What's Mike's nationality?", options: [
                "Portuguese",
                "American",
                "Greek",
                "Canadian"
            ], selection: { selection = $0 }
            )
        }
        
        Text("Last selection " + selection)
    }
}


