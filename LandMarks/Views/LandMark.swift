//
//  Landmark.swift
//  LandMarks
//
//  Created by rrli  on 2021/3/13.
//

import Foundation
import CoreLocation
import SwiftUI

struct Landmark: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var category: String
    var city: String
    var state: String
    var park: String
    var isFeatured: Bool // TODO: try to remove this prop later
    var isFavorite: Bool // TODO: try to remove this prop later
    
    var description: String
    private var imageName: String
    var image: Image {
        Image(imageName)
    }
    
    private var coordinates: Coordinates
    
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: coordinates.latitude, longitude: coordinates.longitude)
    }
    
    struct Coordinates: Hashable, Codable {
        var longitude: Double
        var latitude: Double
    }
}
