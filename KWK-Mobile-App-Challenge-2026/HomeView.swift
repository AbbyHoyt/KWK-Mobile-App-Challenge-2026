//
//  HomeView.swift
//  KWK-Mobile-App-Challenge-2026
//
//  Created by Abby Hoyt on 7/2/26.
//

import SwiftUI

struct HomeView: View {
    // Define color palette.
    // let white = Color(red: 248 / 255.0, green: 255 / 255.0, blue: 229 / 255.0)
    // let pink = Color(red: 239 / 255.0, green: 71 / 255.0, blue: 111 / 255.0)
    // let yellow = Color(red: 255 / 255.0, green: 196 / 255.0, blue: 61 / 255.0)
    // let green = Color(red: 6 / 255.0, green: 214 / 255.0, blue: 160 / 255.0)
    // let teal = Color(red: 27 / 255.0, green: 154 / 255.0, blue: 170 / 255.0)
    
    let white = Color(red: 232 / 255.0, green: 237 / 255.0, blue: 242 / 255.0)
    let gray = Color(red: 44 / 255.0, green: 57 / 255.0, blue: 71 / 255.0)
    
    @State private var colorName: String = ""
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color(white)
                    .ignoresSafeArea()
                
                VStack {
                    Text("")
                    
                    Divider()
                        .frame(width: 375)
                        .frame(height: 0.5)
                        .overlay(gray)
                    
                    HStack(alignment: .center) {
                        Image("logo-new")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 70, height: 70)
                            .cornerRadius(150)
                            .padding(.horizontal, 20)
                        
                        Text("App Name Here")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(gray)
                        
                        Spacer()
                    }
                    
                    Divider()
                        .frame(width: 375)
                        .frame(height: 0.5)
                        .overlay(gray)
                    
                    Text("Add a Color")
                        .padding(20)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .fontWeight(.bold)
                        .foregroundColor(gray)
                        .font(.title2)
                    
                    HStack(spacing: 0) {
                        Text("Name:")
                            .padding(.leading, 20)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .fontWeight(.bold)
                            .foregroundColor(gray)
                        
                        TextField("e.g., Lemon Yellow", text: $colorName)
                            .frame(width: 300, height: 45)
                            .textFieldStyle(.roundedBorder)
                            .padding(.trailing, 20)
                    }
                    
                    Text("Color:")
                        .padding(.leading, 20)
                        .padding(.top, 20)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .fontWeight(.bold)
                        .foregroundColor(gray)
                    
                    Spacer()
                    
                    NavigationLink(destination: LibraryView()) {
                        Text("View Your Library")
                            .fontWeight(.bold)
                            .foregroundColor(white)
                            .padding(15)
                            .background(gray)
                            .cornerRadius(10)
                    }
                }
            }
            .navigationBarBackButtonHidden(true) 
        }
    }
}

#Preview {
    HomeView()
}
