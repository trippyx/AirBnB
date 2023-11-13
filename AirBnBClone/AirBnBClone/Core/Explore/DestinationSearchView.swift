//
//  DestinationSearchView.swift
//  AirBnBClone
//
//  Created by Kuldeep Singh on 12/11/23.
//

import SwiftUI

enum DestinationSearchOptions{
    case location
    case dates
    case guests
}

struct DestinationSearchView: View {
    @Binding var showDestinationSearchView:Bool
    @State var destination:String = ""
    @State var selectedOption:DestinationSearchOptions = .location
   
    
    var body: some View {
        VStack(alignment:.leading,content: {
            if selectedOption == .location{
                Button(action: {
                    withAnimation(.snappy){
                        showDestinationSearchView.toggle()
                    }
                }, label: {
                    Image(systemName: "xmark.circle")
                        .imageScale(.large)
                        .foregroundStyle(.black)
                })
                Text("Where to?")
                    .font(.title2)
                    .fontWeight(.semibold)
                
                HStack(content: {
                    Image(systemName: "magnifyingglass")
                        .imageScale(.small)
                    TextField("Search Destination", text:$destination)
                        .font(.subheadline)
                })
                .frame(height: 44)
                .padding(.horizontal)
                .overlay {
                    RoundedRectangle(cornerRadius: 8)
                        .stroke(lineWidth: 1)
                        .foregroundStyle(Color(.systemGray4))
                }
            }else{
                CollaplasableView(title: "Where", desciption: "Add Destination")
            }
            
        })
        .padding()
        .frame(height: selectedOption == .location ? 150 : 64)
        .background(.white)
        .clipShape(RoundedRectangle(cornerRadius: 12))
        .padding()
        .shadow(radius: 10)
        .onTapGesture {
            withAnimation(.snappy) {
                selectedOption = .location
            }
        }
        
        VStack(content: {
            if selectedOption == .dates{
                HStack {
                    Text("Expanded View")
                    Spacer()
                }
            }else{
                CollaplasableView(title: "When", desciption: "Add Dates")
                    
            }
        })
        .padding()
        .frame(height: selectedOption == .dates ? 150 : 64)
        .background(.white)
        .clipShape(RoundedRectangle(cornerRadius: 12))
        .padding()
        .shadow(radius: 10)
        .onTapGesture {
            withAnimation(.snappy) {
                selectedOption = .dates
            }
        }
        
        VStack(content: {
            if selectedOption == .guests{
                HStack {
                    Text("Expanded View")
                    Spacer()
                }
            }else{
                CollaplasableView(title: "Who", desciption: "Add Guests")
            }
        })
        .padding()
        .frame(height: selectedOption == .guests ? 150 : 64)
        .background(.white)
        .clipShape(RoundedRectangle(cornerRadius: 12))
        .padding()
        .shadow(radius: 10)
        .onTapGesture {
            withAnimation(.snappy) {
                selectedOption = .guests
            }
        }
        
      
            
        
    }
}

struct CollaplasableView:View{
    let title:String
    let desciption:String
    var body: some View{
        VStack(content: {
            HStack(content: {
                Text(title)
                    .foregroundStyle(.gray)
                Spacer()
                Text(desciption)
                
            })
            .fontWeight(.semibold)
            .font(.subheadline)
        })
       
    }
}

#Preview {
    DestinationSearchView(showDestinationSearchView: .constant(false))
}
