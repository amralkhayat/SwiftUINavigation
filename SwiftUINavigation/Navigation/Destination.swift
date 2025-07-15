//
//  Destination.swift
//  SwiftUINavigation
//
//  Created by Amr Saeed on 14.07.25.
//

/// A unified enum representing all possible navigation destinations.
///
/// This type allows the `Router` to decide how to navigate (push, sheet, or full screen)
/// based on a single input.
///
/// - Note: Each associated value should conform to `Hashable` and `Identifiable` (if used with `.sheet`/`.fullScreenCover`).
public enum Destination: Hashable {

    /// A destination to be pushed onto a `NavigationStack`.
    case push(PushDestination)

    /// A destination to be presented as a sheet.
    case sheet(SheetDestination)

    /// A destination to be presented as a full-screen cover.
    case fullScreen(FullScreenDestination)
}
