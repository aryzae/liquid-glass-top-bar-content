//
//  DemoContentView.swift
//  LiquidGlassTopBarContent
//
//  Created by aryzae on 2026/06/07.
//

import SwiftUI

struct DemoContentView: View {
    var body: some View {
        ScrollView {
            LazyVStack(spacing: 0) {
                ForEach(0..<80) { i in
                    Rectangle()
                        .fill(Color(hue: Double(i % 24) / 24.0,
                                    saturation: 0.85,
                                    brightness: 0.95))
                        .frame(height: 56)
                        .overlay(
                            Text("Row \(i)")
                                .font(.headline)
                                .foregroundStyle(.white)
                        )
                }
            }
        }
    }
}

#Preview {
    DemoContentView()
}
