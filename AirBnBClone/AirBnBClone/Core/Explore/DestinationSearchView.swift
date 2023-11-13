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
    @State var startDate = Date()
    @State var endDate = Date()
    @State var numberofGuest = 0
    
    var body: some View {
        VStack{
            
            HStack(content: {
                Button(action: {
                    withAnimation(.snappy){
                        showDestinationSearchView.toggle()
                    }
                }, label: {
                    Image(systemName: "xmark.circle")
                        .imageScale(.large)
                        .foregroundStyle(.black)
                })
                Spacer()
                if !destination.isEmpty{
                    Button(action: {
                        destination = ""
                    }, label: {
                        Text("Clear")
                            .foregroundStyle(.black)
                            .font(.subheadline)
                            .fontWeight(.semibold)
                    })
                }
                
            })
            .padding()
            
            VStack(alignment:.leading,content: {
                if selectedOption == .location{
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
            .modifier(CollaplasableDestinationViewModifider())
            .frame(height: selectedOption == .location ? 150 : 64)
            
            .onTapGesture {
                withAnimation(.snappy) {
                    selectedOption = .location
                }
            }
            
            VStack(alignment:.leading,content: {
                if selectedOption == .dates{
                    Text("When's your trip ?")
                        .font(.title2)
                        .fontWeight(.semibold)
                    VStack(content: {
                        DatePicker("From", selection: $startDate, displayedComponents: .date)
                        Divider()
                        DatePicker("To", selection: $endDate, displayedComponents: .date)
                    })
                    .foregroundStyle(.gray)
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    
                }else{
                    CollaplasableView(title: "When", desciption: "Add Dates")
                    
                }
            })
            .onTapGesture {
                withAnimation(.snappy) {
                    selectedOption = .dates
                }
            }
            .frame(height: selectedOption == .dates ? 180 : 64)
            .modifier(CollaplasableDestinationViewModifider())
           
            
            VStack(alignment:.leading,content: {
                if selectedOption == .guests{
                    Text("Who's Coming ?")
                        .font(.title)
                        .fontWeight(.semibold)
                    
                    Stepper{
                        Text("\(numberofGuest) Adults")
                    }onIncrement: {
                        numberofGuest += 1
                    }onDecrement: {
                        guard numberofGuest >= 0 else { return }
                        numberofGuest -= 1
                    }
                    
                }else{
                    CollaplasableView(title: "Who", desciption: "Add Guests")
                }
            })
            .modifier(CollaplasableDestinationViewModifider())
            .frame(height: selectedOption == .guests ? 150 : 64)
            .onTapGesture {
                withAnimation(.snappy) {
                    selectedOption = .guests
                }
            }
            
            Spacer()
            
        }
            
        
    }
}

struct CollaplasableDestinationViewModifider:ViewModifier{
    func body(content: Content) -> some View {
        content
            .padding()
            .background(.white)
            .clipShape(RoundedRectangle(cornerRadius: 12))
            .padding()
            .shadow(radius: 10)
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
