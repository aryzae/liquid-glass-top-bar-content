//
//  PatternAView.swift
//  LiquidGlassTopBarContent
//
//  Created by aryzae on 2026/06/07.
//

import SwiftUI

struct PatternAView: View {
    let onClose: () -> Void
    @State private var selection: Int = 0

    var body: some View {
        NavigationStack {
            DemoContentView()
                .toolbar {
                    ToolbarItem(placement: .topBarLeading) {
                        Button(action: onClose) {
                            Image(systemName: "xmark")
                        }
                    }
                    ToolbarItem(placement: .principal) {
                        Picker("", selection: $selection) {
                            Text("First").tag(0)
                            Text("Second").tag(1)
                            Text("Third").tag(2)
                        }
                        .pickerStyle(.segmented)
                    }
                }
                .navigationBarTitleDisplayMode(.inline)
        }
    }
}
