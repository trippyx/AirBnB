//
//  ExploreView.swift
//  AirBnBClone
//
//  Created by Kuldeep Singh on 12/11/23.
//

import SwiftUI

struct ExploreView: View {
    @State private var showDestinationSearchView = false
    var body: some View {
        NavigationStack {
            if showDestinationSearchView{
                DestinationSearchView(showDestinationSearchView: $showDestinationSearchView)
            }else{
                ScrollView {
                    SearchAndFilterBar()
                        .onTapGesture {
                            withAnimation(.snappy){
                                showDestinationSearchView.toggle()
                            }
                        }
                    LazyVStack(spacing:32,content: {
                        ForEach(1...10, id: \.self) { count in
                            NavigationLink(value: count) {
                                ListingItemView()
                                    .frame(height: 400)
                                    .clipShape(RoundedRectangle(cornerRadius: 10))
                            }
                            
                        }
                    })
                    .navigationDestination(for: Int.self, destination: { list in
                        ListingDetailView()
                            .navigationBarBackButtonHidden()
                    })
                    .padding()
                }
            }
        }
    }
}

#Preview {
    ExploreView()
}
