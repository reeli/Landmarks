//
//  Landmark.swift
//  LandMarks
//
//  Created by rrli  on 2021/3/5.
//

import Foundation
import SwiftUI
import CoreLocation

struct Landmark: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var category: String
    var city: String
    var state: String
    var park: String
    var description: String
    var isFavorite: Bool
    
    private var imageName:String
    var image: Image {
        Image(imageName)
    }
    
    private var coordinates: Coordinates
    
    struct Coordinates: Hashable,Codable {
        var latitude: Double
        var longitude: Double
    }
    
    var locationCordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: coordinates.latitude,
                               longitude: coordinates.longitude)
    }
}
