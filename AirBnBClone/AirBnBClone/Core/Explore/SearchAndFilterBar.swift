//
//  SearchAndFilterBar.swift
//  AirBnBClone
//
//  Created by Kuldeep Singh on 12/11/23.
//

import SwiftUI

struct SearchAndFilterBar: View {
    var body: some View {
        HStack(content: {
            Image(systemName: "magnifyingglass")
            VStack(alignment:.leading,spacing:2,content: {
                Text("Where to?")
                    .font(.footnote)
                    .fontWeight(.semibold)
                Text("Anywhere - Any Week - Any guests ")
                    .font(.caption)
                    .foregroundStyle(.gray)
            })
            Spacer()
            Button(action: {}, label: {
                Image(systemName: "line.3.horizontal.decrease.circle")
                    .foregroundStyle(.black)
            })
            
        })
        .padding(.horizontal)
        .padding(.vertical,10)
        .overlay {
            Capsule()
                .stroke(lineWidth: 0.5)
                .foregroundStyle(Color(.systemGray4))
                .shadow(color:.black.opacity(0.4),radius: 2)
        }
        .padding()
    }
}

#Preview {
    SearchAndFilterBar()
}
