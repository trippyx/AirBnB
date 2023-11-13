//
//  Listing.swift
//  AirBnBClone
//
//  Created by Kuldeep Singh on 13/11/23.
//

import Foundation

struct Listing: Identifiable, Codable {
    let id: String
    let ownerUid: String
    let ownerName:String
    let ownerImageUrl:String
    let numberOfBedrooms:Int
    let numberOfBathrooms: Int
    let numberOfGuests: Int
    let numberOfBeds: Int
    var pricePerNight: Int
    let latitude: Double
    let longitude: Double
    let address:String
    let city:String
    let state:String
    let title:String
    var rating: Double
    var features:[ListingAmenities]
    var aminites:[ListingAmenities]
    let type:ListingType
    
}

enum ListingFeatures: Int, Codable, Identifiable, Hashable {
    var id:Int{
        return rawValue
    }
    case selfCheckIn
    case superHost
    
    var imageName: String
    {
        switch self {
        case .selfCheckIn: return "door.left.hand.open"
        case .superHost: return "medal"
        }
    }
    
    var title :String {
        switch self {
        case .selfCheckIn:
            return "Self check-in"
        case .superHost: return "Superhost"
            
        }
    }
    
}


enum ListingType: Int, Codable, Identifiable, Hashable {
    case apartment
    case house
    case townHouse
    case villa
    
    var description: String {
        switch self {
        case .apartment: return "Apartment"
        case .house: return "House"
        case .townHouse: return "Town Home"
        case .villa: return "Villa"
        }
    }
    var id: Int { return rawValue }
}

enum ListingAmenities: Int, Codable, Identifiable, Hashable {
    case pool
    case kitchen
    case wifi
    case laundry
    case tv
    case alarmSystem
    case office
    case balcony
    var id:Int{
        return rawValue
    }
    
    
    var title: String {
        switch self {
        case .pool: return "Pool"
        case .kitchen: return "Kitchen"
        case .wifi: return "Wifi"
        case .laundry: return "Laundry"
        case .tv: return "TV"
        case .alarmSystem: return "Alarm System"
        case .office: return "Office"
        case .balcony: return "Balcony"
        }
    }
        
        var imageName:String {
            switch self {
            case .pool: return "figure. pool. swim"
            case .kitchen: return "fork.knife"
            case .wifi: return "wifi"
            case .laundry: return "washer"
            case .tv: return "tv"
            case .alarmSystem: return "checkerboard.shield"
            case .office: return "pencil.and.ruler.fill"
            case .balcony: return "building"
                
            }
        }
}

