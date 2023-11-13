//
//  ProfileOptionRowView.swift
//  AirBnBClone
//
//  Created by Kuldeep Singh on 13/11/23.
//

import SwiftUI

struct ProfileOptionRowView: View {
    let imageName:String
    let title:String
    
    var body: some View {
        VStack(content: {
            HStack(content: {
                Image(systemName: imageName)
                Text(title)
                    .font(.subheadline)
                Spacer()
                Image(systemName: "chevron.right")
            })
            Divider()
        })
    }
}

#Preview {
    ProfileOptionRowView(imageName: "gear", title: "Settings")
}
