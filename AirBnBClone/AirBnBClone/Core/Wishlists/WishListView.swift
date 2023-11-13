//
//  WishListView.swift
//  AirBnBClone
//
//  Created by Kuldeep Singh on 13/11/23.
//

import SwiftUI

struct WishListView: View {
    var body: some View {
        NavigationStack {
            VStack(alignment: .leading, spacing: 32, content: {
                VStack(alignment: .leading, spacing: 4, content: {
                    Text("Log in to view your wishlist")
                        .font(.headline)
                    Text("You can create, view or edit wishlists once you've logged in ")
                        .font(.footnote)
                })
                Button(action: {
                    
                }, label: {
                    Text("Login")
                        .foregroundStyle(.white)
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .frame(width: 360, height: 48)
                        .background(.pink)
                        .clipShape(RoundedRectangle(cornerRadius: 8))
                })
                Spacer()
            })
            .padding()
            .navigationTitle("Wishlists")
        }
    }
}

#Preview {
    WishListView()
}
