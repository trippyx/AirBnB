//
//  ListingImageCoursalView.swift
//  AirBnBClone
//
//  Created by Kuldeep Singh on 12/11/23.
//

import SwiftUI

struct ListingImageCoursalView: View {
    var images:[String] = [
       "1",
       "2",
       "3",
       "4",
       "5"
    ]
    var body: some View {
        TabView {
            ForEach(images,id: \.self){ image in
                Image(image)
                    .resizable()
                    .scaledToFill()
            }
        }
        .tabViewStyle(.page)
    }
}

#Preview {
    ListingImageCoursalView()
}
