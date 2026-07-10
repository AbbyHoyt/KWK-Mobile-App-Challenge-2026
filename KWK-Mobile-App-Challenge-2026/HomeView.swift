//
//  HomeView.swift
//  KWK-Mobile-App-Challenge-2026
//
//  Created by Abby Hoyt on 7/2/26.
//

import SwiftUI

// ColorItem struct.
struct ColorItem: Identifiable {
    let id = UUID() // ID.
    var name: String // Name of the color
    var selection: Color // A Color object.
    var description: String // Description of the color.
    var tags: String // Tags describing the color.
}

struct HomeView: View {
    // Define color palette.
    let white = Color(red: 232 / 255.0, green: 237 / 255.0, blue: 242 / 255.0)
    let gray = Color(red: 44 / 255.0, green: 57 / 255.0, blue: 71 / 255.0)
    let blue = Color(red: 82 / 255.0, green: 122 / 255.0, blue: 149 / 255.0)
    
    // Variables to hold the name, selection, description, and tags for a color the user inputs.
    @State private var colorName: String = ""
    @State private var colorSelection: Color = .pink
    @State private var colorDescription: String = ""
    @State private var colorTags: String = ""
    
    // The list items holds ColorItem instances.
    @State private var items: [ColorItem] = []
    @State private var itemCount = 1
    
    var body: some View {
        NavigationStack {
            ZStack {
                // Set background color.
                Color(white)
                    .ignoresSafeArea()
                
                // Make screen scrollable.
                ScrollView {
                    VStack {
                        // App logo and name in row across the top of the app.
                        HStack(alignment: .center) {
                            // App logo on the left.
                            Image("logo-new")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 70, height: 70)
                                .cornerRadius(150)
                                .padding(.horizontal, 20)
                            
                            // App name on the right.
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
                        
                        // "Add a Color" section header.
                        Text("ADD A COLOR")
                            .font(.custom("Anton", size: 28))
                            .fontWeight(.bold)
                            .padding(20)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .foregroundColor(gray)
                            .padding(.top, -15)
                        
                        // Color name section.
                        HStack(spacing: 0) {
                            // Color name text field label.
                            Text("Name:")
                                .font(.custom("Cabin", size: 22))
                                .fontWeight(.bold)
                                .foregroundColor(gray)
                                .padding(.leading, 20)
                                .frame(maxWidth: .infinity, alignment: .leading)
                            
                            // Color name text field
                            TextField("e.g., Lemon Yellow", text: $colorName)
                                .frame(width: 300, height: 45)
                                .textFieldStyle(.roundedBorder)
                                .padding(.trailing, 20)
                        }
                        .padding(.top, -15)
                        
                        // Color selection section.
                        ColorPicker("Select a Color:", selection: $colorSelection, supportsOpacity: true)
                            .font(.custom("Cabin", size: 22))
                            .fontWeight(.bold)
                            .foregroundColor(gray)
                            .padding(.horizontal, 20)
                            .padding(.top, 10)
                            .frame(maxWidth: .infinity, alignment: .leading)
                        
                        // Preview of the selected color.
                        RoundedRectangle(cornerRadius: 15)
                            .fill(colorSelection)
                            .frame(width: 375, height: 125)
                            .padding(.horizontal, 20)
                            .padding(.top, 5)
                        
                        // Color description text field label.
                        Text("Description:")
                            .font(.custom("Cabin", size: 22))
                            .fontWeight(.bold)
                            .foregroundColor(gray)
                            .padding(.leading, 20)
                            .padding(.top, 10)
                            .frame(maxWidth: .infinity, alignment: .leading)
                        
                        // Color description text field.
                        TextField("e.g., Saw this color at the park!", text: $colorDescription)
                            .frame(width: 375, height: 45)
                            .textFieldStyle(.roundedBorder)
                            .padding(.horizontal, 20)
                            .padding(.top, -10)
                        
                        // Color tags text field label.
                        Text("Tags:")
                            .font(.custom("Cabin", size: 22))
                            .fontWeight(.bold)
                            .foregroundColor(gray)
                            .padding(.leading, 20)
                            .padding(.top, 10)
                            .frame(maxWidth: .infinity, alignment: .leading)
                        
                        // Color tags text field.
                        TextField("e.g., #summer, #neon", text: $colorTags)
                            .frame(width: 375, height: 45)
                            .textFieldStyle(.roundedBorder)
                            .padding(.horizontal, 20)
                            .padding(.bottom, 10)
                            .padding(.top, -10)
                        
                        // Submit button.
                        // On click, adds a new color to the library displayed below.
                        HStack {
                            Spacer()
                            
                            Button("Submit Color") {
                                // Call addColorItem function.
                                addColorItem()
    
                                // Clear/reset user input.
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
                    
                    // "Library" section header.
                    Text("LIBRARY")
                        .font(.custom("Anton", size: 28))
                        .fontWeight(.bold)
                        .padding(20)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .foregroundColor(gray)
                        .padding(.top, -15)
                        .padding(.bottom, -25)
                    
                    // Display color library.
                    VStack(spacing: 10) {
                        if items.isEmpty {
                            // If the library is empty, display a "no entries" message.
                            Text("No colors in your library yet!")
                                .font(.custom("Cabin", size: 22))
                                .fontWeight(.bold)
                                .foregroundColor(gray)
                                .multilineTextAlignment(.center)
                                .padding(.top, 10)
                        } else {
                            // If the library is not empty, display each item that has been added.
                            ForEach($items) { item in
                                HStack {
                                    // Color and name column.
                                    VStack {
                                        // Color.
                                        RoundedRectangle(cornerRadius: 15)
                                            .frame(width: 75, height: 75)
                                            .foregroundColor(item.selection.wrappedValue)
                                        
                                        // Name.
                                        Text(item.name.wrappedValue)
                                            .font(.custom("Cabin", size: 22))
                                            .fontWeight(.bold)
                                            .foregroundColor(gray)
                                            .multilineTextAlignment(.center)
                                    }
                                    .padding(.trailing, 20)
                                    .frame(width: 175)
                                    
                                    Spacer()
                                    
                                    // Description and tags column.
                                    VStack {
                                        // Description.
                                        Text(item.description.wrappedValue)
                                            .font(.custom("Cabin", size: 18))
                                            .fontWeight(.bold)
                                            .foregroundColor(gray)
                                            .padding(.bottom, 10)
                                            .multilineTextAlignment(.leading)
                                            .frame(maxWidth: .infinity, alignment: .leading)
                                        
                                        // Tags.
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
                                
                                // Add divider between entries.
                                Divider()
                                    .frame(width: 375)
                                    .frame(height: 0.5)
                                    .overlay(gray)
                            }
                        }
                    }
                    
                    // About button.
                    // On click, takes the user to the "About" page.
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
    
    // Function to add a new color to the items list.
    private func addColorItem() {
        // Create a new ColorItem instance using the values the user input.
        let newItem = ColorItem(
            name: colorName,
            selection: colorSelection,
            description: colorDescription,
            tags: colorTags
        )
        // Append the new ColorItem instance to the items list and increase itemCount accordingly.
        items.append(newItem)
        itemCount += 1
    }
}

#Preview {
    HomeView()
}
