//
//  SingleTextSelectionCell.swift
//  SwiftUIArchitecture
//
//  Created by Angel Trejo Flores on 17/01/24.
//

import SwiftUI

struct SingleTextSelectionCell: View {
    let text: String
    let selection: () -> Void
    
    var body: some View {
        Button(action: selection, label: {
            HStack {
                Circle()
                    .stroke(Color.secondary, lineWidth: 2.5)
                    .frame(width: 40.0, height: 40.0)
                
                Text(text)
                    .font(.title)
                    .foregroundStyle(Color.secondary)
                
                Spacer()
            }.padding()
        })
    }
}

#Preview {
    SingleTextSelectionCell(text: "A text", selection: {})
}
