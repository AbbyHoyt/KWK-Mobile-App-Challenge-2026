//
//  HomeView.swift
//  KWK-Mobile-App-Challenge-2026
//
//  Created by Abby Hoyt on 7/2/26.
//

import SwiftUI

struct ColorItem: Identifiable {
    let id = UUID()
    var name: String
    var selection: Color
    var description: String
    var tags: String
}

struct HomeView: View {
    // Define color palette.
    let white = Color(red: 232 / 255.0, green: 237 / 255.0, blue: 242 / 255.0)
    let gray = Color(red: 44 / 255.0, green: 57 / 255.0, blue: 71 / 255.0)
    let blue = Color(red: 82 / 255.0, green: 122 / 255.0, blue: 149 / 255.0)
    
    @State private var colorName: String = ""
    @State private var colorSelection: Color = .pink
    @State private var colorDescription: String = ""
    @State private var colorTags: String = ""
    
    @State private var items: [ColorItem] = []
    @State private var itemCount = 1
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color(white)
                    .ignoresSafeArea()
                
                ScrollView {
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
                        
                        TextField("e.g., #summer, #neon", text: $colorTags)
                            .frame(width: 375, height: 45)
                            .textFieldStyle(.roundedBorder)
                            .padding(.horizontal, 20)
                            .padding(.bottom, 10)
                            .padding(.top, -10)
                        
                        HStack {
                            Spacer()
                            
                            Button("Submit Color") {
                                addColorItem()
    
                                colorName = ""
                                colorSelection = Color.pink
                                colorDescription = ""
                                colorTags = ""
                            }
                            .font(.custom("Cabin", size: 20))
                            .fontWeight(.bold)
                            .foregroundColor(white)
                            .padding(10)
                            .background(gray)
                            .cornerRadius(10)
                            .padding(.trailing, 20)
                        }
                        .padding(.bottom, 20)
                        
                        Divider()
                            .frame(width: .infinity)
                            .frame(height: 0.5)
                            .overlay(gray)
                    }
                    
                    Text("LIBRARY")
                        .font(.custom("Anton", size: 28))
                        .fontWeight(.bold)
                        .padding(20)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .foregroundColor(gray)
                        .padding(.top, -15)
                        .padding(.bottom, -25)
                    
                    VStack(spacing: 10) {
                        if items.isEmpty {
                            Text("No colors in your library yet!")
                                .font(.custom("Cabin", size: 22))
                                .fontWeight(.bold)
                                .foregroundColor(gray)
                                .multilineTextAlignment(.center)
                                .padding(.top, 10)
                        } else {
                            ForEach($items) { item in
                                HStack {
                                    VStack {
                                        RoundedRectangle(cornerRadius: 15)
                                            .frame(width: 75, height: 75)
                                            .foregroundColor(item.selection.wrappedValue)
                                        
                                        Text(item.name.wrappedValue)
                                            .font(.custom("Cabin", size: 22))
                                            .fontWeight(.bold)
                                            .foregroundColor(gray)
                                            .multilineTextAlignment(.center)
                                    }
                                    .padding(.trailing, 20)
                                    .frame(width: 175)
                                    
                                    Spacer()
                                    
                                    VStack {
                                        Text(item.description.wrappedValue)
                                            .font(.custom("Cabin", size: 18))
                                            .fontWeight(.bold)
                                            .foregroundColor(gray)
                                            .padding(.bottom, 10)
                                            .multilineTextAlignment(.leading)
                                            .frame(maxWidth: .infinity, alignment: .leading)
                                        
                                        Text(item.tags.wrappedValue)
                                            .font(.custom("Cabin", size: 18))
                                            .fontWeight(.bold)
                                            .foregroundColor(blue)
                                            .multilineTextAlignment(.leading)
                                            .frame(maxWidth: .infinity, alignment: .leading)
                                    }
                                    .frame(width: 175)
                                    .fixedSize(horizontal: false, vertical: true)
                                }
                                .padding(20)
                                
                                Divider()
                                    .frame(width: 375)
                                    .frame(height: 0.5)
                                    .overlay(gray)
                            }
                        }
                    }
                    
                    NavigationLink("About Color Keeper") {
                        AboutView()
                    }
                    .font(.custom("Cabin", size: 20))
                    .fontWeight(.bold)
                    .foregroundColor(white)
                    .padding(15)
                    .background(gray)
                    .cornerRadius(10)
                    .padding(.vertical, 20)
                }
                .frame(height: nil)
            }
        }
    }
    
    private func addColorItem() {
        let newItem = ColorItem(
            name: colorName,
            selection: colorSelection,
            description: colorDescription,
            tags: colorTags
        )
        items.append(newItem)
        itemCount += 1
    }
}

#Preview {
    HomeView()
}
