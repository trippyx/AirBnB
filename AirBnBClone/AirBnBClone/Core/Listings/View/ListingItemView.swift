//
//  ListingItemView.swift
//  AirBnBClone
//
//  Created by Kuldeep Singh on 12/11/23.
//

import SwiftUI

struct ListingItemView: View {
  
    var body: some View {
        VStack(content: {
           ListingImageCoursalView()
                .frame(height: 320)
                .clipShape(RoundedRectangle(cornerRadius: 10))
            HStack(alignment:.top,content: {
                VStack(alignment:.leading,content: {
                    Text("Miami, Florida")
                        .fontWeight(.semibold)
                    Text("12 mi away")
                        .foregroundStyle(.gray)
                    Text("3-10 Nov")
                        .foregroundStyle(.gray)
                    HStack(content: {
                        Text("$544")
                            .fontWeight(.semibold)
                        Text("Night")
                    })
                })
               
                Spacer()
                HStack(content: {
                    Image(systemName: "star.fill")
                    Text("4.5")
                })
            })
            .foregroundStyle(.black)
            .font(.footnote)
            
        })
    }
}

#Preview {
    ListingItemView()
}
