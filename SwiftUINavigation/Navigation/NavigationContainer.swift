//
//  NavigationContainer.swift
//  SwiftUINavigation
//
//  Created by Amr Saeed on 14.07.25.
//

import SwiftUI

struct NavigationContainer<Content: View>: View {
    @State private var router = Router()
    
    public let delegate: NavigationRouterDelegate
    
    // Your root content
    @ViewBuilder var content: () -> Content
    
    
    var body: some View {
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
