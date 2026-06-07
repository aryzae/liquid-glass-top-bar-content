//
//  PatternDView.swift
//  LiquidGlassTopBarContent
//
//  Created by aryzae on 2026/06/07.
//

import SwiftUI

struct PatternDView: View {
    let onClose: () -> Void
    @State private var searchText: String = ""

    var body: some View {
        DemoContentView()
            .safeAreaInset(edge: .top, spacing: 0) {
                HStack(spacing: 8) {
                    Button(action: onClose) {
                        Image(systemName: "xmark")
                            .font(.body.weight(.semibold))
                            .frame(width: 44, height: 44)
                    }
                    SearchField(text: $searchText)
                }
                .padding(.horizontal, 12)
                .frame(height: 50)
                .background(.bar)
            }
    }
}

struct SearchField: View {
    @Binding var text: String
    var placeholder: String = "Search"

    var body: some View {
        HStack(spacing: 6) {
            Image(systemName: "magnifyingglass")
                .foregroundStyle(.secondary)
            TextField(placeholder, text: $text)
                .textFieldStyle(.plain)
            if !text.isEmpty {
                Button {
                    text = ""
                } label: {
                    Image(systemName: "xmark.circle.fill")
                        .foregroundStyle(.secondary)
                }
                .buttonStyle(.plain)
            }
        }
        .padding(.horizontal, 8)
        .padding(.vertical, 6)
        .background(Color(.tertiarySystemFill), in: RoundedRectangle(cornerRadius: 10))
    }
}
