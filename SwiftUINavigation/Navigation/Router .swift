//
//  Router .swift
//  SwiftUINavigation
//
//  Created by Amr Saeed on 14.07.25.
//

import Observation

/// A navigation router responsible for managing navigation state across push, sheet, and full-screen destinations.
@Observable
public final class Router {

    /// The stack of push navigation destinations.
    ///
    /// This array represents the current push navigation path and can be used to drive `NavigationStack`.
    public var navigationStackPath: [PushDestination] = []

    /// The currently presented sheet destination, if any.
    public var sheet: SheetDestination?

    /// The currently presented full-screen cover destination, if any.
    public var fullScreen: FullScreenDestination?

    // MARK: - Unified Navigation Entry Point

    /// Navigates to the given destination.
    ///
    /// This method determines the appropriate presentation style (`push`, `sheet`, or `fullScreen`)
    /// and updates the corresponding navigation state.
    ///
    /// - Parameter destination: The destination to navigate to, wrapped in the `Destination` enum.
    public func navigate(to destination: Destination) {
        switch destination {
        case let .push(dest):
            navigationStackPath.append(dest)
        case let .sheet(dest):
            sheet = dest
        case let .fullScreen(dest):
            fullScreen = dest
        }
    }
}

