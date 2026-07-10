//
//  ContentView.swift
//  KWK-Mobile-App-Challenge-2026
//
//  Created by Abby Hoyt on 6/27/26.
//

import SwiftUI

struct ContentView: View {
    // Define color palette.    
    let white = Color(red: 232 / 255.0, green: 237 / 255.0, blue: 242 / 255.0)
    let gray = Color(red: 44 / 255.0, green: 57 / 255.0, blue: 71 / 255.0)
    let blue = Color(red: 82 / 255.0, green: 122 / 255.0, blue: 149 / 255.0)
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color(white)
                    .ignoresSafeArea()
                
                VStack {
                    // App logo.
                    Image("logo-new")
                        .resizable(resizingMode: .stretch)
                        .aspectRatio(contentMode: .fit)
                        .cornerRadius(150)
                        .padding(.horizontal, 50)
                        .padding(.bottom, 5)
                    
                    // App name.
                    Text("COLOR KEEPER")
                        .font(.custom("Anton-Regular", size: 45))
                        .fontWeight(.bold)
                        .foregroundColor(gray)
                        .padding(.bottom, 60)
                    
                    // Get started button.
                    // On click, takes the user to the "Home" page.
                    NavigationLink(destination: HomeView()) {
                        Text("Get Started")
                            .font(.custom("Cabin", size: 24))
                            .fontWeight(.bold)
                            .foregroundColor(white)
                            .padding(15)
                            .background(gray)
                            .cornerRadius(10)
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
