//
//  Router .swift
//  SwiftUINavigation
//
//  Created by Amr Saeed on 14.07.25.
//

import Observation

@Observable
final class Router {
    
    // The only navigation state we keep
    public var navigationStackPath: [PushDestination] = []
    
    public var sheet: SheetDestination?
    public var fullScreen: FullScreenDestination?
    
    // MARK: - Unified Navigation Entry Point
    
        func navigate(to destination: Destination) {
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
