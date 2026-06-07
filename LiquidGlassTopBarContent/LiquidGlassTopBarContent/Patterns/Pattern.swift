//
//  Pattern.swift
//  LiquidGlassTopBarContent
//
//  Created by aryzae on 2026/06/07.
//

import UIKit

enum Pattern: CaseIterable, Identifiable {
    case navBarSegmented
    case navBarSearch
    case topToolbarSegmented
    case topToolbarSearch

    var id: Self { self }

    var title: String {
        switch self {
        case .navBarSegmented:     return "A. NavigationBar + SegmentedControl"
        case .navBarSearch:        return "B. NavigationBar + SearchBar"
        case .topToolbarSegmented: return "C. Top Toolbar + SegmentedControl"
        case .topToolbarSearch:    return "D. Top Toolbar + SearchBar"
        }
    }

    @MainActor
    func makeViewController() -> UIViewController {
        switch self {
        case .navBarSegmented:
            return PatternHostingController { PatternAView(onClose: $0) }
        case .navBarSearch:
            return PatternHostingController { PatternBView(onClose: $0) }
        case .topToolbarSegmented:
            return PatternHostingController { PatternCView(onClose: $0) }
        case .topToolbarSearch:
            return PatternHostingController { PatternDView(onClose: $0) }
        }
    }
}
