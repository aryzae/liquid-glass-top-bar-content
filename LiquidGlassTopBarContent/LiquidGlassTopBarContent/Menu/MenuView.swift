//
//  MenuView.swift
//  LiquidGlassTopBarContent
//
//  Created by aryzae on 2026/06/07.
//

import SwiftUI

struct MenuView: View {
    var body: some View {
        NavigationStack {
            List(Pattern.allCases) { pattern in
                Button {
                    PatternRouter.present(pattern)
                } label: {
                    HStack {
                        Text(pattern.title)
                            .foregroundStyle(.primary)
                        Spacer()
                        Image(systemName: "chevron.right")
                            .foregroundStyle(.tertiary)
                            .font(.footnote.weight(.semibold))
                    }
                }
            }
            .navigationTitle("Top Bar Patterns")
        }
    }
}

#Preview {
    MenuView()
}
