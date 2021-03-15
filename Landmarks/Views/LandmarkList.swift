//
//  LandViewList.swift
//  LandMarks
//
//  Created by rrli  on 2021/3/13.
//

import SwiftUI

struct LandmarkList: View {
    @State private var showFavoritesOnly = false
    
    var filteredLandmarks: [Landmark] {
        return landmarks.filter { landmark in
            if !showFavoritesOnly {
                return true
            }
            
            return landmark.isFavorite
        }
    }
    
    var body: some View {
        NavigationView {
            List {
                Toggle("Favorites only", isOn: $showFavoritesOnly)
                ForEach(filteredLandmarks) { landmark in
                    NavigationLink(destination: LandmarkDetails(landmark: landmark)) {
                        LandmarkRow(landmark: landmark)
                    }
                }
            }
            .navigationTitle("Landmarks")
        }
    }
}

struct LandViewList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
