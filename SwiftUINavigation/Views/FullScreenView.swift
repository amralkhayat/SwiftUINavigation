//
//  FullScreenView.swift
//  SwiftUINavigation
//
//  Created by Amr Saeed on 14.07.25.
//

import SwiftUI

struct FullScreenView: View {
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        
        VStack(spacing: 20) {
                 Text("This is a Full Screen")
                     .font(.title)
                 
                 Button("Dismiss") {
                     dismiss()
                 }
                 .font(.headline)
                 .padding()
                 .background(Color.red)
                 .foregroundColor(.white)
                 .cornerRadius(10)
             }
             .padding()
    }
}

#Preview {
    FullScreenView()
}
