//
//  SheetView.swift
//  SwiftUINavigation
//
//  Created by Amr Saeed on 14.07.25.
//

import SwiftUI

struct SheetView: View {
    
    @Environment(\.dismiss) private var dismiss
    var body: some View {
        VStack(spacing: 20) {
            Text("This is a sheet")
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
        .presentationDetents([.medium, .large])
        .presentationDragIndicator(.visible)
    }
}

#Preview {
    SheetView()
}
