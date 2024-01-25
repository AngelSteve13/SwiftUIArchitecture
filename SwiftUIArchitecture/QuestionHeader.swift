//
//  QuestionHeader.swift
//  SwiftUIArchitecture
//
//  Created by Angel Trejo Flores on 17/01/24.
//

import SwiftUI

struct QuestionHeader: View {
    let title: String
    let question: String
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16.0) {
            Text(title)
                .font(.headline)
                .fontWeight(.medium)
                .foregroundStyle(Color.blue)
                .padding(.top)
            
            Text(question)
                .font(.largeTitle)
                .fontWeight(.medium)
        }.padding()
    }
}

#Preview {
    QuestionHeader(title: "A title", question: "A question")
        .previewLayout(.sizeThatFits)
}
