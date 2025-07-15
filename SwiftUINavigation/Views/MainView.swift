//
//  ContentView.swift
//  SwiftUINavigation
//
//  Created by Amr Saeed on 14.07.25.
//

import SwiftUI

struct MainView: View {
    
    var body: some View {
        VStack(spacing: 24) {
            Image(systemName: "film")
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80)
                .foregroundColor(.accentColor)
                .padding(.top, 40)
            
            Text("Navigation Demo")
                .font(.largeTitle)
                .fontWeight(.bold)
            
            VStack(spacing: 16) {
                NavigationButton(push: .pushView) {
                    Text("Show PushView")
                        .font(.headline)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(12)
                }
                
                NavigationButton(sheet: .sheetView) {
                    Text("Show Sheet")
                        .font(.headline)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.green)
                        .foregroundColor(.white)
                        .cornerRadius(12)
                }
                
                NavigationButton(fullScreen: .fullScreenView) {
                    Text("Show Full Screen")
                        .font(.headline)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.orange)
                        .foregroundColor(.white)
                        .cornerRadius(12)
                }
            }
            .padding(.horizontal)
            
            Spacer()
        }
        .padding()
    }
    
}

#Preview {
    MainView()
}
