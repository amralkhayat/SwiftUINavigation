## SwiftUINavigation

A modern and flexible navigation system for SwiftUI applications that provides a clean and declarative way to handle different navigation patterns.

## Features

- 🔄 Type-safe navigation
- 📱 Support for multiple navigation styles:
  - Push navigation
  - Sheet presentation
  - Full-screen presentation
- 🎯 Centralized navigation management
- 🔌 Protocol-based architecture for easy extensibility
- 📦 Clean and modular design

## Architecture

The navigation system is built with a protocol-oriented approach and follows SOLID principles. Here's the core architecture:

<img width="806" height="902" alt="Screenshot 2025-07-15 at 20 49 17" src="https://github.com/user-attachments/assets/64fd4356-97c0-482e-9b6a-635a9cec0e84" />


## Core Components

### Router
The central navigation manager that handles all navigation requests and coordinates with the RouterDelegate to perform actual navigation operations.

### RouterDelegate
A protocol that defines the contract for handling navigation actions. This allows for easy testing and customization of navigation behavior.

### Destination
A protocol that represents a navigable destination in your app. Different types of destinations (Push, Sheet, FullScreen) implement this protocol.

### NavigationContainer
A SwiftUI view that sets up the navigation environment and provides the router instance to child views.

### NavigationButton
A reusable component that triggers navigation to a specific destination when tapped.

## Requirements

- iOS 16.0+

## Installation

### Manual Installation
1. Clone the repository
2. Copy the `Navigation` folder into your project
3. Add the files to your Xcode project target

## License

This project is available under the MIT license. See the LICENSE file for more info.

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request.   can you improve it 

## Resources
https://www.youtube.com/watch?v=Z-3ETLYbhFA
