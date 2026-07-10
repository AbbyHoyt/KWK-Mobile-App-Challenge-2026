//
//  LibraryView.swift
//  KWK-Mobile-App-Challenge-2026
//
//  Created by Abby Hoyt on 7/3/26.
//

import SwiftUI

struct AboutView: View {
    // Define color palette.
    let white = Color(red: 232 / 255.0, green: 237 / 255.0, blue: 242 / 255.0)
    let gray = Color(red: 44 / 255.0, green: 57 / 255.0, blue: 71 / 255.0)
    let blue = Color(red: 82 / 255.0, green: 122 / 255.0, blue: 149 / 255.0)

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
                        
                        // "About" section header text.
                        Text("ABOUT")
                            .font(.custom("Anton", size: 28))
                            .fontWeight(.bold)
                            .padding(20)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .foregroundColor(gray)
                            .padding(.top, -15)
                            .padding(.bottom, -25)
                        
                        // "About" section body text.
                        Text("Save the colors that matter to you! While navigating the world, add colors you love to your library. Your favorite shades will be stored in one place for easy access later on.")
                            .font(.custom("Cabin", size: 22))
                            .fontWeight(.bold)
                            .foregroundColor(gray)
                            .padding(20)
                            .padding(.top, -10)
                            .frame(maxWidth: .infinity, alignment: .leading)
                        
                        // "Why" section header text.
                        Text("WHY I CREATED COLOR KEEPER")
                            .font(.custom("Anton", size: 28))
                            .fontWeight(.bold)
                            .padding(20)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .foregroundColor(gray)
                            .padding(.top, -15)
                            .padding(.bottom, -25)
                        
                        // "Why" section body text.
                        Text("I am a HUGE color lover! All the time, I'm inspired by colors in the world around me. I see so many colors that would be perfect for use in later designs. However, when it comes time to actually pick colors for a project, I can never remember the colors I wanted to use. This leads to wasted time scrolling through color palettes and being indecisive.")
                            .font(.custom("Cabin", size: 22))
                            .fontWeight(.bold)
                            .foregroundColor(gray)
                            .padding(20)
                            .padding(.top, -10)
                            .frame(maxWidth: .infinity, alignment: .leading)
                        
                        Text("This struggle inspired me to make Color Keeper, a simple place to store the colors you love!")
                            .font(.custom("Cabin", size: 22))
                            .fontWeight(.bold)
                            .foregroundColor(gray)
                            .padding(20)
                            .padding(.top, -10)
                            .frame(maxWidth: .infinity, alignment: .leading)
                        
                        Text("Happy color keeping!")
                            .font(.custom("Cabin", size: 22))
                            .fontWeight(.bold)
                            .foregroundColor(gray)
                            .padding(20)
                            .padding(.top, -10)
                            .frame(maxWidth: .infinity, alignment: .leading)
                    }
                }
                .frame(height: nil)
            }
        }
    }
}

#Preview {
    AboutView()
}
