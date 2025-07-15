//
//  SheetDestination.swift
//  SwiftUINavigation
//
//  Created by Amr Saeed on 14.07.25.
//

/// A set of destinations that can be presented as sheets.
///
/// Each case represents a view shown modally as a sheet.
public enum SheetDestination: String, Hashable, Identifiable {

    /// The unique identifier used by SwiftUI's `.sheet(item:)` modifier.
    public var id: String { rawValue }

    /// A sample destination representing a sheet view.
    ///
    /// Add more cases here as your navigation needs expand.
    case sheetView
}
