//
//  MultipleAnswerQuestion.swift
//  SwiftUIArchitecture
//
//  Created by Angel Trejo Flores on 01/02/24.
//

import SwiftUI

struct MultipleAnswerQuestion: View {
    let title: String
    let question: String
    @State var store: MultipleSelectionStore
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0.0) {
            QuestionHeader(title: title, question: question)
            
            ForEach(store.options.indices) { i in
                MultipleTextSelectionCell(option: $store.options[i])
            }
            
            Spacer()
            
            Button(action: store.submit, label: {
                HStack {
                    Spacer()
                    Text("Submit")
                        .padding()
                        .foregroundColor(Color.white)
                    Spacer()
                }.background(Color.blue)
                .cornerRadius(25)
            })
            .buttonStyle(PlainButtonStyle())
            .padding()
            .disabled(!store.canSubmit)
        }
    }
}

#Preview {
    Group {
        MultipleAnswerQuestionsTestView()
        .preferredColorScheme(.dark)
        .environment(\.sizeCategory, .extraExtraExtraLarge)
    }
}

struct MultipleAnswerQuestionsTestView: View {
    @State var selection = ["none"]
    
    var body: some View {
        VStack {
            MultipleAnswerQuestion(title: "1 of 2",
                                   question: "What's Mike's nationality?",
                                   store: .init(
                                    options: [
                                        "Portuguese",
                                        "American",
                                        "Greek",
                                        "Canadian"
                                    ],
                                    handler: { selection = $0 }
                                   ))
            
            Text("Last selection " + selection.joined(separator: ","))
        }
    }
}


