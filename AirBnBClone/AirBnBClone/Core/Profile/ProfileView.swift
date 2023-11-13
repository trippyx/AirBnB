//
//  ProfileView.swift
//  AirBnBClone
//
//  Created by Kuldeep Singh on 13/11/23.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        VStack {
            VStack(alignment: .leading,spacing: 32, content: {
                VStack(alignment: .leading,spacing: 8,content: {
                    Text("Profile")
                        .font(.largeTitle)
                        .fontWeight(.semibold)
                    Text("Login to start planning your next trip")
                    
                })
                Button(action: {
                    
                }, label: {
                    Text("Log in")
                        .foregroundStyle(.white)
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .frame(width: 360, height: 48)
                        .background(.pink)
                        .clipShape(RoundedRectangle(cornerRadius: 8))
                })
                
                HStack(content: {
                    Text("Don't have the account?")
                    Text("Sign up")
                        .fontWeight(.semibold)
                        .underline()
                    
                })
                .font(.caption)
                
                
            })
            
            VStack(spacing: 24, content: {
                ProfileOptionRowView(imageName: "gear", title: "Settings")
                ProfileOptionRowView(imageName: "gear", title: "Accessibility")
                ProfileOptionRowView(imageName: "questionmark.circle", title: "Visit the help Center")
            })
            .padding(.vertical)
        }
        .padding()
    }
}

#Preview {
    ProfileView()
}
