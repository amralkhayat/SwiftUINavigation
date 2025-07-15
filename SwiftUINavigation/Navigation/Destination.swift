//
//  Destination.swift
//  SwiftUINavigation
//
//  Created by Amr Saeed on 14.07.25.
//

public enum Destination: Hashable {
    case push(PushDestination)
    case sheet(SheetDestination)
    case fullScreen(FullScreenDestination)
}
