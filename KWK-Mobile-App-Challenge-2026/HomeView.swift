//
//  HomeView.swift
//  KWK-Mobile-App-Challenge-2026
//
//  Created by Abby Hoyt on 7/2/26.
//

import SwiftUI

struct HomeView: View {
    // Define color palette.
    let white = Color(red: 232 / 255.0, green: 237 / 255.0, blue: 242 / 255.0)
    let gray = Color(red: 44 / 255.0, green: 57 / 255.0, blue: 71 / 255.0)
    
    @State private var colorName: String = ""
    @State private var colorSelection: Color = .pink
    @State private var colorDescription: String = ""
    @State private var colorTags: String = ""
    
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
                        
                        Text("COLOR KEEPER")
                            .font(.custom("Anton", size: 35))
                            .fontWeight(.bold)
                            .foregroundColor(gray)
                        
                        Spacer()
                    }
                    
                    Divider()
                        .frame(width: .infinity)
                        .frame(height: 0.5)
                        .overlay(gray)
                        .padding(.top, -10)
                    
                    Text("ADD A COLOR")
                        .font(.custom("Anton", size: 28))
                        .fontWeight(.bold)
                        .padding(20)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .foregroundColor(gray)
                        .padding(.top, -15)
                    
                    HStack(spacing: 0) {
                        Text("Name:")
                            .font(.custom("Cabin", size: 22))
                            .fontWeight(.bold)
                            .foregroundColor(gray)
                            .padding(.leading, 20)
                            .frame(maxWidth: .infinity, alignment: .leading)
                        
                        TextField("e.g., Lemon Yellow", text: $colorName)
                            .frame(width: 300, height: 45)
                            .textFieldStyle(.roundedBorder)
                            .padding(.trailing, 20)
                    }
                    .padding(.top, -15)
                    
                    ColorPicker("Select a Color:", selection: $colorSelection, supportsOpacity: true)
                        .font(.custom("Cabin", size: 22))
                        .fontWeight(.bold)
                        .foregroundColor(gray)
                        .padding(.horizontal, 20)
                        .padding(.top, 10)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    
                    RoundedRectangle(cornerRadius: 15)
                        .fill(colorSelection)
                        .frame(width: 375, height: 125)
                        .padding(.horizontal, 20)
                        .padding(.top, 5)
                    
                    Text("Description:")
                        .font(.custom("Cabin", size: 22))
                        .fontWeight(.bold)
                        .foregroundColor(gray)
                        .padding(.leading, 20)
                        .padding(.top, 10)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    
                    TextField("e.g., Saw this color at the park!", text: $colorDescription)
                        .frame(width: 375, height: 45)
                        .textFieldStyle(.roundedBorder)
                        .padding(.horizontal, 20)
                        .padding(.top, -10)
                    
                    Text("Tags:")
                        .font(.custom("Cabin", size: 22))
                        .fontWeight(.bold)
                        .foregroundColor(gray)
                        .padding(.leading, 20)
                        .padding(.top, 10)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    
                    TextField("e.g., #Summer, #Neon", text: $colorTags)
                        .frame(width: 375, height: 45)
                        .textFieldStyle(.roundedBorder)
                        .padding(.horizontal, 20)
                        .padding(.bottom, 10)
                        .padding(.top, -10)
                    
                    HStack {
                        Spacer()
                        
                        Button("Submit Color") {
                            print("Adding color...")
                        }
                        .font(.custom("Cabin", size: 20))
                        .fontWeight(.bold)
                        .foregroundColor(white)
                        .padding(10)
                        .background(gray)
                        .cornerRadius(10)
                        .padding(.trailing, 20)
                    }
                    .padding(.bottom, 15)
                    
                    Divider()
                        .frame(width: .infinity)
                        .frame(height: 0.5)
                        .overlay(gray)
                    
                    Spacer()
                    
                    NavigationLink(destination: LibraryView()) {
                        Text("VIEW YOUR LIBRARY")
                        .font(.custom("Anton", size: 24))
                        .fontWeight(.bold)
                        .foregroundColor(white)
                        .padding(15)
                        .background(gray)
                        .cornerRadius(10)
                    }
                    .padding(.top, 15)
                }
            }
            .navigationBarBackButtonHidden(true) 
        }
    }
}

#Preview {
    HomeView()
}
