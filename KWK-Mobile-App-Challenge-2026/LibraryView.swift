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
                                .foregroundColor(Color.teal)
                            
                            Text("Waimānalo Beach")
                                .font(.custom("Cabin", size: 22))
                                .fontWeight(.bold)
                                .foregroundColor(gray)
                                .multilineTextAlignment(.center)
                        }
                        .padding(.trailing, 20)
                        .frame(width: 175)
                        
                        Spacer()
                        
                        VStack {
                            Text("The color of the ocean and the sky in Hawaii.")
                                .font(.custom("Cabin", size: 18))
                                .fontWeight(.bold)
                                .foregroundColor(gray)
                                .padding(.bottom, 10)
                                .multilineTextAlignment(.leading)
                                .frame(maxWidth: .infinity, alignment: .leading)
                            
                            Text("#vacation, #blue, #summer")
                                .font(.custom("Cabin", size: 18))
                                .fontWeight(.bold)
                                .foregroundColor(blue)
                                .multilineTextAlignment(.leading)
                                .frame(maxWidth: .infinity, alignment: .leading)
                        }
                        .frame(width: 175)
                    }
                    .padding(20)
                    
                    Divider()
                        .frame(width: 375)
                        .frame(height: 0.5)
                        .overlay(gray)
                    
                    HStack {
                        VStack {
                            RoundedRectangle(cornerRadius: 15)
                                .frame(width: 75, height: 75)
                                .foregroundColor(Color.pink)
                            
                            Text("Charlotte's Mirror")
                                .font(.custom("Cabin", size: 22))
                                .fontWeight(.bold)
                                .foregroundColor(gray)
                                .multilineTextAlignment(.center)
                        }
                        .padding(.trailing, 20)
                        .frame(width: 175)
                        
                        Spacer()
                        
                        VStack {
                            Text("The funky pink mirror from the neighbors down the street.")
                                .font(.custom("Cabin", size: 18))
                                .fontWeight(.bold)
                                .foregroundColor(gray)
                                .padding(.bottom, 10)
                                .multilineTextAlignment(.leading)
                                .frame(maxWidth: .infinity, alignment: .leading)
                            
                            Text("#neon, #fun, #family")
                                .font(.custom("Cabin", size: 18))
                                .fontWeight(.bold)
                                .foregroundColor(blue)
                                .multilineTextAlignment(.leading)
                                .frame(maxWidth: .infinity, alignment: .leading)
                        }
                        .frame(width: 175)
                    }
                    .padding(20)
                    
                    Divider()
                        .frame(width: 375)
                        .frame(height: 0.5)
                        .overlay(gray)

                    HStack {
                        VStack {
                            RoundedRectangle(cornerRadius: 15)
                                .frame(width: 75, height: 75)
                                .foregroundColor(Color.yellow)
                            
                            Text("The Front Door")
                                .font(.custom("Cabin", size: 22))
                                .fontWeight(.bold)
                                .foregroundColor(gray)
                                .multilineTextAlignment(.center)
                        }
                        .padding(.trailing, 20)
                        .frame(width: 175)
                        
                        Spacer()
                        
                        VStack {
                            Text("The paint color on my family's front door.")
                                .font(.custom("Cabin", size: 18))
                                .fontWeight(.bold)
                                .foregroundColor(gray)
                                .padding(.bottom, 10)
                                .multilineTextAlignment(.leading)
                                .frame(maxWidth: .infinity, alignment: .leading)
                            
                            Text("#home, #warm, #inviting")
                                .font(.custom("Cabin", size: 18))
                                .fontWeight(.bold)
                                .foregroundColor(blue)
                                .multilineTextAlignment(.leading)
                                .frame(maxWidth: .infinity, alignment: .leading)
                        }
                        .frame(width: 175)
                    }
                    .padding(20)
                    
                    Divider()
                        .frame(width: 375)
                        .frame(height: 0.5)
                        .overlay(gray)
                    
                    Spacer()
                }
            }
        }
    }
}

#Preview {
    LibraryView()
}
