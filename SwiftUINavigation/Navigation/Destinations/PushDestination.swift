//
//  PushDestination.swift
//  SwiftUINavigation
//
//  Created by Amr Saeed on 14.07.25.
//

public enum PushDestination: String, Hashable, Identifiable {
    public var id: String { rawValue }
    case pushView
}
