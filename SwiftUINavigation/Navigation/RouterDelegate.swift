//
//  RouterDelegate.swift
//  SwiftUINavigation
//
//  Created by Amr Saeed on 14.07.25.
//
import SwiftUI

import SwiftUI

/// A protocol that defines how to resolve views for navigation destinations.
///
/// Conforming types are responsible for returning views based on the specific type of destination:
/// - `PushDestination` for push navigation
/// - `SheetDestination` for sheets
/// - `FullScreenDestination` for full-screen covers
///
/// This allows your navigation system to remain decoupled from view construction.
public protocol NavigationRouterDelegate {

    /// Returns the view to present for a given push destination.
    ///
    /// - Parameter destination: A push navigation target.
    /// - Returns: A type-erased view to display in a `NavigationStack`.
    func view(for destination: PushDestination) -> AnyView

    /// Returns the view to present as a sheet.
    ///
    /// - Parameter destination: A sheet destination.
    /// - Returns: A type-erased view to present in a `.sheet`.
    func sheet(for destination: SheetDestination) -> AnyView

    /// Returns the view to present as a full-screen cover.
    ///
    /// - Parameter destination: A full-screen destination.
    /// - Returns: A type-erased view to present in a `.fullScreenCover`.
    func fullScreen(for destination: FullScreenDestination) -> AnyView
}

/// A concrete implementation of `NavigationRouterDelegate` for resolving views.
///
/// Replace the example views here (`PushView`, `SheetView`, `FullScreenView`) with your actual view types.
public struct RouterDelegate: NavigationRouterDelegate {

    public init() {}

    public func view(for destination: PushDestination) -> AnyView {
        switch destination {
        case .pushView:
            return AnyView(PushView())
        }
    }

    public func sheet(for destination: SheetDestination) -> AnyView {
        switch destination {
        case .sheetView:
            return AnyView(SheetView())
        }
    }

    public func fullScreen(for destination: FullScreenDestination) -> AnyView {
        switch destination {
        case .fullScreenView:
            return AnyView(FullScreenView())
        }
    }
}

