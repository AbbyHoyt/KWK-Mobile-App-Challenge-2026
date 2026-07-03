//
//  ContentView.swift
//  KWK-Mobile-App-Challenge-2026
//
//  Created by Abby Hoyt on 6/27/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
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
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
