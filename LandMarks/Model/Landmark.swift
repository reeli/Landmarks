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

protocol PersonProtocal {
    var height: Int{get set}
    var weight: Int{get}
    func getName()
    func setName(name: String)
}

protocol Engineer: PersonProtocal {
    var good: Bool {get}
}

protocol Animal {
}

struct Person: Engineer, Animal, CustomStringConvertible {
    var height = 123
    var weight = 200
    var good = true
    
    func getName() {
        print("Tony")
    }
    func setName(name: String) {
        print(name)
    }
    
    var description: String {
        return "\(self.weight) hahaha"
    }
}

var person = Person()
//print(person.height)

protocol ObjectThatFlies
{
    var flightTerminology: String { get }
    func fly() // 不需要提供实现，除非我想
}

extension ObjectThatFlies
{
    func fly() -> Void
    {
        let myType = String(describing: type(of: self))
        let flightTerminologyForType = myType + " " + flightTerminology + "\n"
        print(flightTerminologyForType)
    }
}
