//
//  ListingDetailView.swift
//  AirBnBClone
//
//  Created by Kuldeep Singh on 12/11/23.
//

import SwiftUI
import MapKit
struct ListingDetailView: View {
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ScrollView {
            //TabView
            ZStack(alignment:.topLeading) {
                ListingImageCoursalView()
                    .frame(height: 320)
                
                Button(action: {
                    dismiss()
                }, label: {
                    Image(systemName: "chevron.left")
                        .foregroundStyle(.black)
                        .background(
                            Circle()
                                .fill(.white)
                                .frame(width: 32, height: 32)
                        
                        )
                        .padding(32)
                })
            }

            VStack(alignment:.leading,spacing: 8,content: {
                
                Text("Miami Villa")
                    .font(.title)
                    .fontWeight(.semibold)
                
                VStack(alignment: .leading, content: {
                    HStack(spacing: 2, content: {
                        Image(systemName: "star.fill")
                        Text("4.86")
                        Text(" - ")
                        Text("28 reviews")
                            .underline()
                            .fontWeight(.semibold)
                        
                    })
                    .foregroundStyle(.black)
                    Text("Miami Florida")
                })
                
            })
            .padding(.leading)
            .frame(maxWidth: .infinity,alignment: .leading)
            
            Divider()
            
            //Host View
            HStack(content: {
                VStack(alignment: .leading,spacing: 4, content: {
                    Text("Entire villa hosted by Peter Parker")
                        .font(.headline)
                        .frame(width: 250,alignment: .leading)
                    HStack(spacing: 2, content: {
                        Text("4 guests -")
                        Text("4 bedrooms -")
                        Text("4 beds -")
                        Text("3 baths -")
                    })
                    .font(.caption)
                    
                })
                .frame(width: 300,alignment: .leading)
                Spacer()
                Image(systemName: "person")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 64, height: 64)
                    .clipShape(Circle())
            })
            .padding()
            
            Divider()
            
            //Listing Feature
            
            VStack(alignment: .leading,spacing: 16, content: {
                ForEach(0..<2) { feature in
                    HStack(spacing:12,content: {
                        Image(systemName: "medal")
                        VStack(alignment:.leading,content: {
                            Text("Superhost")
                                .font(.footnote)
                                .fontWeight(.semibold)
                            Text("Superhosts are expirence, highly rated hosts who are commited to providing great stars for guests")
                                .font(.caption)
                                .foregroundStyle(.gray)
                        })
                        Spacer()
                    })
                }
            })
            .padding()
            
            Divider()
            
            //BedRoom Feature
            VStack(alignment:.leading,spacing: 16,content: {
                Text("Where you'll sleep")
                    .font(.headline)
                ScrollView(.horizontal,showsIndicators: false) {
                    HStack(spacing: 16, content: {
                        ForEach(1..<5) { beds in
                            VStack(content: {
                                Image(systemName: "bed.double")
                                Text("Bedroom \(beds)")
                            })
                            .frame(width: 132, height: 100)
                            .overlay {
                                RoundedRectangle(cornerRadius: 12)
                                    .stroke(lineWidth: 2)
                                    .foregroundStyle(.gray)
                            }
                        }
                    })
                }
                .scrollTargetBehavior(.paging)
            })
            .padding()
            
            Divider()
            
            //Listing Aminites
            VStack(alignment: .leading, spacing: 16, content: {
                Text("What this place offers")
                    .font(.subheadline)
                ForEach(0..<5){ item in
                    HStack(content: {
                        Image(systemName: "wifi")
                            .frame(width: 32)
                        Text("Wifi")
                            .font(.footnote)
                        Spacer()
                    })
                }
            })
            .padding()
            
            
            VStack(alignment: .leading, spacing: 16, content: {
               Text("Where you'll be")
                    .font(.headline)
                Map()
                    .frame(height: 200)
                    .clipShape(RoundedRectangle(cornerRadius: 12))
            })
            .padding()
            
            
        }
        .toolbar(.hidden, for: .tabBar)
        .ignoresSafeArea()
        .padding(.bottom,44)
        .overlay(alignment:.bottom) {
            VStack(content: {
                Divider()
                    .padding(.bottom)
                HStack(content: {
                    VStack(alignment:.leading,content: {
                        Text("$500")
                            .font(.subheadline)
                            .fontWeight(.semibold)
                        Text("Total before Taxes")
                            .font(.footnote)
                        Text("Nov 15-25")
                            .font(.footnote)
                            .fontWeight(.semibold)
                            .underline()
                    })
                    Spacer()
                    Button(action: {}, label: {
                        Text("Reserve")
                            .foregroundStyle(.white)
                            .font(.subheadline)
                            .fontWeight(.semibold)
                            .frame(width: 140, height: 40)
                            .background(.pink)
                            .clipShape(RoundedRectangle(cornerRadius: 8))
                    })
                })
                .padding(.horizontal,32)
                
            })
            .background(.white)
        }
        
    }
}

#Preview {
    ListingDetailView()
}
