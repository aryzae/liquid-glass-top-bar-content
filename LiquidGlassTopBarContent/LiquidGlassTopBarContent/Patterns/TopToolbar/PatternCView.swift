//
//  PatternCView.swift
//  LiquidGlassTopBarContent
//
//  Created by aryzae on 2026/06/07.
//

import SwiftUI

struct PatternCView: View {
    let onClose: () -> Void
    @State private var selection: Int = 0

    var body: some View {
        DemoContentView()
            .safeAreaInset(edge: .top, spacing: 0) {
                HStack(spacing: 8) {
                    Button(action: onClose) {
                        Image(systemName: "xmark")
                            .font(.body.weight(.semibold))
                            .frame(width: 44, height: 44)
                    }
                    Picker("", selection: $selection) {
                        Text("First").tag(0)
                        Text("Second").tag(1)
                        Text("Third").tag(2)
                    }
                    .pickerStyle(.segmented)
                }
                .padding(.horizontal, 12)
                .frame(height: 50)
                .background(.bar)
            }
    }
}
