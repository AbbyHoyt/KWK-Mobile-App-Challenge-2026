//
//  ContentView.swift
//  KWK-Mobile-App-Challenge-2026
//
//  Created by Abby Hoyt on 6/27/26.
//

import SwiftUI

struct ContentView: View {
    
    // Define color palette.
    // let white = Color(red: 248 / 255.0, green: 255 / 255.0, blue: 229 / 255.0)
    // let pink = Color(red: 239 / 255.0, green: 71 / 255.0, blue: 111 / 255.0)
    // let yellow = Color(red: 255 / 255.0, green: 196 / 255.0, blue: 61 / 255.0)
    // let green = Color(red: 6 / 255.0, green: 214 / 255.0, blue: 160 / 255.0)
    // let teal = Color(red: 27 / 255.0, green: 154 / 255.0, blue: 170 / 255.0)
    
    let white = Color(red: 232 / 255.0, green: 237 / 255.0, blue: 242 / 255.0)
    let gray = Color(red: 44 / 255.0, green: 57 / 255.0, blue: 71 / 255.0)
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color(white)
                    .ignoresSafeArea()
                
                VStack {
                    Image("logo-new")
                        .resizable(resizingMode: .stretch)
                        .aspectRatio(contentMode: .fit)
                        .cornerRadius(150)
                        .padding(.horizontal, 50)
                        .padding(.bottom, 5)
                    
                    Text("Color Keeper")
                        .font(.custom("Anton-Regular", size: 45))
                        .fontWeight(.bold)
                        .foregroundColor(gray)
                        .padding(.bottom, 60)
                    
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
