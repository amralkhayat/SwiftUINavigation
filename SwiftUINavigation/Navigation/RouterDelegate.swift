//
//  RouterDelegate.swift
//  SwiftUINavigation
//
//  Created by Amr Saeed on 14.07.25.
//
import SwiftUI

protocol NavigationRouterDelegate {
    func view(for destination: PushDestination) -> AnyView
    func sheet(for destination: SheetDestination) -> AnyView
    func fullScreen(for destination: FullScreenDestination) -> AnyView
}

struct RouterDelegate: NavigationRouterDelegate {
    func view(for destination: PushDestination) -> AnyView {
        switch destination {
        case .pushView:
            return AnyView(PushView())
        }
    }

    func sheet(for destination: SheetDestination) -> AnyView {
        switch destination {
        case .SheetView:
            return AnyView(SheetView())
        }
    }

    func fullScreen(for destination: FullScreenDestination) -> AnyView {
        switch destination {
        case .fullScreenView:
            return AnyView(FullScreenView())
        }
    }
}
