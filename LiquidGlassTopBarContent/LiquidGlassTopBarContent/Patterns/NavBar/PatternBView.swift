//
//  PatternBView.swift
//  LiquidGlassTopBarContent
//
//  Created by aryzae on 2026/06/07.
//

import SwiftUI

struct PatternBView: View {
    let onClose: () -> Void
    @State private var searchText: String = ""

    var body: some View {
        NavigationStack {
            DemoContentView()
                .toolbar {
                    ToolbarItem(placement: .topBarLeading) {
                        Button(action: onClose) {
                            Image(systemName: "xmark")
                        }
                    }
                }
                .searchable(
                    text: $searchText,
                    placement: .navigationBarDrawer(displayMode: .always),
                    prompt: "Search"
                )
        }
    }
}
