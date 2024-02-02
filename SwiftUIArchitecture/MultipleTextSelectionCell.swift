//
//  MultipleTextSelectionCell.swift
//  SwiftUIArchitecture
//
//  Created by Angel Trejo Flores on 01/02/24.
//

import SwiftUI

struct MultipleTextSelectionCell: View {
    @Binding var option: MultipleSelectionOption
    
    var body: some View {
        Button(action: { option.select() }, label: {
            HStack {
                Rectangle()
                    .strokeBorder(option.isSelected ? Color.blue : Color.secondary, lineWidth: 2.5)
                    .overlay(
                        Rectangle()
                            .fill(option.isSelected ? Color.blue : .clear)
                    )
                    .frame(width: 40.0, height: 40.0)
                
                Text(option.text)
                    .font(.title)
                    .foregroundColor(option.isSelected ? Color.blue : Color.secondary)
                
                Spacer()
            }.padding()
        })
    }
}

#Preview {
    MultipleTextSelectionCell(option: .constant(.init(text:  "A text", isSelected: false)))
}

#Preview {
    MultipleTextSelectionCell(option: .constant(.init(text:  "A text", isSelected: true)))
}
