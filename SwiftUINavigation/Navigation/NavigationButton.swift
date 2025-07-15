//
//  NavigationButto.swift
//  SwiftUINavigation
//
//  Created by Amr Saeed on 14.07.25.
//

import SwiftUI

public struct NavigationButton<Content: View>: View {
    private let destination: Destination
    private let content: () -> Content

    @Environment(Router.self) private var router

    // MARK: - Unified Initializer
    public init(
        destination: Destination,
        @ViewBuilder content: @escaping () -> Content
    ) {
        self.destination = destination
        self.content = content
    }

    // MARK: - Convenience Initializers
    public init(
        push destination: PushDestination,
        @ViewBuilder content: @escaping () -> Content
    ) {
        self.destination = .push(destination)
        self.content = content
    }

    public init(
        sheet destination: SheetDestination,
        @ViewBuilder content: @escaping () -> Content
    ) {
        self.destination = .sheet(destination)
        self.content = content
    }

    public init(
        fullScreen destination: FullScreenDestination,
        @ViewBuilder content: @escaping () -> Content
    ) {
        self.destination = .fullScreen(destination)
        self.content = content
    }

    // MARK: - Body
    public var body: some View {
        Button(action: {
            router.navigate(to: destination)
        }) {
            content()
        }
    }
}
