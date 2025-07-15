//
//  NavigationButto.swift
//  SwiftUINavigation
//
//  Created by Amr Saeed on 14.07.25.
//

import SwiftUI

/// A reusable button that triggers navigation using a unified `Router`.
///
/// `NavigationButton` simplifies triggering navigation actions (push, sheet, or full-screen)
/// by wrapping the destination and triggering the router on tap.
///
/// You can use the unified initializer with a `Destination` value,
/// or convenience initializers for each navigation style.
///
/// ```swift
/// NavigationButton(push: .pushView) {
///     Text("Go to Push View")
/// }
/// ```
///
/// This button retrieves the `Router` from the environment,
/// so make sure it's injected using `NavigationContainer`.
public struct NavigationButton<Content: View>: View {
    
    /// The destination to navigate to.
    private let destination: Destination
    
    /// The content of the button.
    private let content: () -> Content
    
    /// The router instance injected via the environment.
    @Environment(Router.self) private var router
    
    // MARK: - Unified Initializer
    
    /// Creates a navigation button with a unified destination type.
    ///
    /// - Parameters:
    ///   - destination: A `Destination` value representing the navigation type.
    ///   - content: A view builder for the button's content.
    init(
        destination: Destination,
        @ViewBuilder content: @escaping () -> Content
    ) {
        self.destination = destination
        self.content = content
    }
    
    // MARK: - Convenience Initializers
    
    /// Creates a navigation button for a push destination.
    ///
    /// - Parameters:
    ///   - destination: A `PushDestination` enum case.
    ///   - content: A view builder for the button's content.
    init(
        push destination: PushDestination,
        @ViewBuilder content: @escaping () -> Content
    ) {
        self.destination = .push(destination)
        self.content = content
    }
    
    /// Creates a navigation button for a sheet destination.
    ///
    /// - Parameters:
    ///   - destination: A `SheetDestination` enum case.
    ///   - content: A view builder for the button's content.
    init(
        sheet destination: SheetDestination,
        @ViewBuilder content: @escaping () -> Content
    ) {
        self.destination = .sheet(destination)
        self.content = content
    }
    
    /// Creates a navigation button for a full-screen cover destination.
    ///
    /// - Parameters:
    ///   - destination: A `FullScreenDestination` enum case.
    ///   - content: A view builder for the button's content.
    init(
        fullScreen destination: FullScreenDestination,
        @ViewBuilder content: @escaping () -> Content
    ) {
        self.destination = .fullScreen(destination)
        self.content = content
    }
    
    // MARK: - View Body
    
    public var body: some View {
        Button(action: {
            router.navigate(to: destination)
        }) {
            content()
        }
    }
}
