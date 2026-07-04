//
//  LibraryView.swift
//  KWK-Mobile-App-Challenge-2026
//
//  Created by Abby Hoyt on 7/3/26.
//

import SwiftUI

struct LibraryView: View {
    // Define color palette.    
    let white = Color(red: 232 / 255.0, green: 237 / 255.0, blue: 242 / 255.0)
    let gray = Color(red: 44 / 255.0, green: 57 / 255.0, blue: 71 / 255.0)
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color(white)
                    .ignoresSafeArea()
                
                VStack {
                    HStack(alignment: .center) {
                        Image("logo-new")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 70, height: 70)
                            .cornerRadius(150)
                            .padding(.horizontal, 20)
                        
                        Text("Color Keeper")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(gray)
                        
                        Spacer()
                    }
                    
                    Divider()
                        .frame(width: .infinity)
                        .frame(height: 0.5)
                        .overlay(gray)
                    
                    Text("Library page.")
                        .padding(20)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .fontWeight(.bold)
                        .foregroundColor(gray)
                    
                    Spacer()
                }
            }
        }
    }
}

#Preview {
    LibraryView()
}
