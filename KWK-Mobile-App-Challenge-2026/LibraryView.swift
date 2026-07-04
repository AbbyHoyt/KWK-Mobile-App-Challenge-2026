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
    let blue = Color(red: 82 / 255.0, green: 122 / 255.0, blue: 149 / 255.0)
    
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
                    
                    Text("LIBRARY")
                        .font(.custom("Anton", size: 28))
                        .fontWeight(.bold)
                        .padding(20)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .foregroundColor(gray)
                        .padding(.top, -15)
                        .padding(.bottom, -20)
                    
                    HStack {
                        VStack {
                            RoundedRectangle(cornerRadius: 15)
                                .frame(width: 75, height: 75)
                                .foregroundColor(Color.red)
                            
                            Text("Cherry Red")
                                .font(.custom("Cabin", size: 22))
                                .fontWeight(.bold)
                                .foregroundColor(gray)
                            
                            Text("#summer, #neon")
                                .font(.custom("Cabin", size: 18))
                                .fontWeight(.bold)
                                .foregroundColor(blue)
                                .multilineTextAlignment(.center)
                        }
                        .padding(.trailing, 20)
                        .frame(width: 175)
                        
                        Spacer()
                        
                        Text("Placeholder text goes here!")
                            .font(.custom("Cabin", size: 18))
                            .fontWeight(.bold)
                            .foregroundColor(gray)
                            .frame(width: 175)
                    }
                    .padding(20)
                    
                    HStack {
                        VStack {
                            RoundedRectangle(cornerRadius: 15)
                                .frame(width: 75, height: 75)
                                .foregroundColor(Color.yellow)
                            
                            Text("Lemon Yellow")
                                .font(.custom("Cabin", size: 22))
                                .fontWeight(.bold)
                                .foregroundColor(gray)
                            
                            Text("#warm, #inviting, #nature")
                                .font(.custom("Cabin", size: 18))
                                .fontWeight(.bold)
                                .foregroundColor(blue)
                                .multilineTextAlignment(.center)
                        }
                        .padding(.trailing, 20)
                        .frame(width: 175)
                        
                        Spacer()
                        
                        Text("Placeholder text goes here!")
                            .font(.custom("Cabin", size: 18))
                            .fontWeight(.bold)
                            .foregroundColor(gray)
                            .frame(width: 175)
                    }
                    .padding(20)
                    
                    HStack {
                        VStack {
                            RoundedRectangle(cornerRadius: 15)
                                .frame(width: 75, height: 75)
                                .foregroundColor(Color.teal)
                            
                            Text("Ocean Blue")
                                .font(.custom("Cabin", size: 22))
                                .fontWeight(.bold)
                                .foregroundColor(gray)
                            
                            Text("#cool-tone, #blue, #summer")
                                .font(.custom("Cabin", size: 18))
                                .fontWeight(.bold)
                                .foregroundColor(blue)
                                .multilineTextAlignment(.center)
                        }
                        .padding(.trailing, 20)
                        .frame(width: 175)
                        
                        Spacer()
                        
                        Text("Placeholder text goes here!")
                            .font(.custom("Cabin", size: 18))
                            .fontWeight(.bold)
                            .foregroundColor(gray)
                            .frame(width: 175)
                    }
                    .padding(20)
                    
//                    VStack {
//                        RoundedRectangle(cornerRadius: 15)
//                            .frame(width: 75, height: 75)
//                            .foregroundColor(Color.red)
//                        
//                        Text("Cherry Red")
//                            .font(.custom("Cabin", size: 22))
//                            .fontWeight(.bold)
//                            .foregroundColor(gray)
//                        
//                        Text("#summer, #neon")
//                            .font(.custom("Cabin", size: 18))
//                            .fontWeight(.bold)
//                            .foregroundColor(blue)
//                    }
                    
                    Spacer()
                }
            }
        }
    }
}

#Preview {
    LibraryView()
}
