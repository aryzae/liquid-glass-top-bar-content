//
//  PatternHostingController.swift
//  LiquidGlassTopBarContent
//
//  Created by aryzae on 2026/06/07.
//

import SwiftUI
import UIKit

final class PatternHostingController<Content: View>: UIHostingController<Content> {
    convenience init(_ build: (@escaping () -> Void) -> Content) {
        var dismissAction: (() -> Void)?
        self.init(rootView: build { dismissAction?() })
        dismissAction = { [weak self] in self?.dismiss(animated: true) }
    }
}
