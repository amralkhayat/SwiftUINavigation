//
//  NavigationContainer.swift
//  SwiftUINavigation
//
//  Created by Amr Saeed on 14.07.25.
//

import SwiftUI

/// A container view that manages navigation using a shared `Router` instance.
///
/// This view sets up a `NavigationStack`, along with support for presenting sheets and full-screen covers,
/// and injects the `Router` into the environment for downstream views to access.
///
/// Use this as the root view for any screen that requires navigation coordination.
public struct NavigationContainer<Content: View>: View {

    /// The router instance managing the navigation state.
    @State private var router = Router()

    /// A delegate that provides destination views for different types of navigation actions.
     let delegate: NavigationRouterDelegate

    /// The root content view builder.
    @ViewBuilder public var content: () -> Content

    /// Creates a new navigation container.
    ///
    /// - Parameters:
    ///   - delegate: An object conforming to `NavigationRouterDelegate` to handle view resolution.
    ///   - content: A view builder that produces the root content.
     init(
        delegate: NavigationRouterDelegate,
        @ViewBuilder content: @escaping () -> Content
    ) {
        self.delegate = delegate
        self.content = content
    }

    public var body: some View {
        NavigationStack(path: $router.navigationStackPath) {
            content()
                .navigationDestination(for: PushDestination.self) { dest in
                    delegate.view(for: dest)
                }
        }
        .sheet(item: $router.sheet) { dest in
            delegate.sheet(for: dest)
        }
        .fullScreenCover(item: $router.fullScreen) { dest in
            delegate.fullScreen(for: dest)
        }
        .environment(router)
    }
}
