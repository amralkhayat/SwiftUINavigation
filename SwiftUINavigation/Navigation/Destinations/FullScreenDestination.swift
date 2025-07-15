//
//  FullScreenDestination.swift
//  SwiftUINavigation
//
//  Created by Amr Saeed on 14.07.25.
//

/// A set of destinations that can be presented as full-screen covers.
///
/// Each case corresponds to a view that should be shown in a full-screen modal presentation.
public enum FullScreenDestination: String, Hashable, Identifiable {
    
    /// The unique identifier for each destination, used by SwiftUI's `.fullScreenCover(item:)`.
    public var id: String { rawValue }
    
    /// A sample destination representing a full-screen view.
    ///
    /// Extend this enum with additional cases as needed.
    case fullScreenView
}

