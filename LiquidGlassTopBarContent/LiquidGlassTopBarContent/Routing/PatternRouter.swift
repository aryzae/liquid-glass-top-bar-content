//
//  PatternRouter.swift
//  LiquidGlassTopBarContent
//
//  Created by aryzae on 2026/06/07.
//

import UIKit

@MainActor
enum PatternRouter {
    static func present(_ pattern: Pattern) {
        guard let topVC = topMostViewController() else { return }
        let vc = pattern.makeViewController()
        vc.modalPresentationStyle = .fullScreen
        topVC.present(vc, animated: true)
    }

    private static func topMostViewController() -> UIViewController? {
        let scene = UIApplication.shared.connectedScenes
            .compactMap { $0 as? UIWindowScene }
            .first { $0.activationState == .foregroundActive }
        let keyWindow = scene?.windows.first { $0.isKeyWindow } ?? scene?.windows.first
        guard var vc = keyWindow?.rootViewController else { return nil }
        while let presented = vc.presentedViewController { vc = presented }
        return vc
    }
}
