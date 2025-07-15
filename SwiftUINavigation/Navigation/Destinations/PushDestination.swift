//
//  PushDestination.swift
//  SwiftUINavigation
//
//  Created by Amr Saeed on 14.07.25.
//

/// A set of destinations that can be pushed onto a `NavigationStack`.
///
/// Each case represents a distinct view that can be navigated to using push navigation.
public enum PushDestination: String, Hashable, Identifiable {
    
    /// The identifier used for SwiftUI navigation.
    public var id: String { rawValue }
    
    /// A sample destination representing a push-based view.
    ///
    /// Replace or extend this with real cases used in your app/module.
    case pushView
}
