//
//  ContentView.swift
//  KWK-Mobile-App-Challenge-2026
//
//  Created by Abby Hoyt on 6/27/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            VStack {
                Text("Hello, World!")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(Color.green)
                Image("flowers")
                    .resizable(resizingMode: .stretch)
                    .aspectRatio(contentMode: .fit)
                Link(destination: URL(string: "https://www.kodewithklossy.com")!) {
                    Text("Kode With Klossy Website")
                }
                
                NavigationLink(destination: HomeView()) {
                    Text("Go to Home Page!")
                }
            }
            .padding()
        }
        .navigationTitle("Landing")
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarHidden(true)
    }
}

#Preview {
    ContentView()
}
