//
//  ContentView.swift
//  Tomagatchi But Better
//
//  Created by csuftitan on 10/22/25.
//

import SwiftUI
import SwiftData

struct MenuView: View {
    var body: some View {
        ZStack{
            Image("Menu")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
            VStack(spacing: 25) {
                
                Button("Play") {
                    playTapped()
                }
                .buttonStyle(MenuButtonStyle())
                
                Button("Load") {
                    loadTapped()
                }
                .buttonStyle(MenuButtonStyle())
                
                Button("Exit") {
                    exitTapped()
                }
                .buttonStyle(MenuButtonStyle())
            }
            Spacer()
                .frame(height: 25)
            .padding()
        }
    }

    // Actions
    func playTapped() {
        print("Play tapped")
        // Navigate to game view or trigger game logic
    }

    func loadTapped() {
        print("Load tapped")
        // Implement load functionality
    }

    func exitTapped() {
        print("Exit tapped")
        // WARNING: This is not allowed in production apps
        exit(0)
    }
}

struct MenuButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .frame(width: 200, height: 75)
            .background(Color.white)
            .foregroundColor(.black)
            .font(.system(size: 30, weight: .semibold))
            .cornerRadius(10)
            .scaleEffect(configuration.isPressed ? 0.95 : 1.0)
    }
}

#Preview {
    MenuView()
}
