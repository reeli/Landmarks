//
//  ModelData.swift
//  LandMarks
//
//  Created by rrli  on 2021/3/13.
//

import Foundation

final class ModelData: ObservableObject {
    @Published var landmarks: [Landmark] = load("landmarkData.json")
}

func load<T: Decodable>(_ filename: String) -> T {
    let data: Data
    
    guard  let file = Bundle.main.url(forResource: filename, withExtension: nil) else {
        fatalError("Could not find\(filename) in  main bundle")
    }
    
    do {
        data = try Data(contentsOf: file)
    } catch{
        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
    }
    
    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    }catch{
        fatalError("Could not parse \(filename) as \(T.self):\n\(error)")
    }
}
