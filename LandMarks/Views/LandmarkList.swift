//
//  LandViewList.swift
//  LandMarks
//
//  Created by rrli  on 2021/3/13.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        NavigationView {
            List(landmarks) { landmark in
                NavigationLink(destination: LandmarkDetails()) {
                    LandmarkRow(landmark: landmark)
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
