//
//  CircleImage.swift
//  LandMarks
//
//  Created by rrli  on 2021/3/13.
//

import SwiftUI

struct CircleImage: View {
    var imageName: String
    
    var body: some View {
//        GeometryReader { geometry in
            Image(imageName)
//                .frame(width: geometry.size.width, height: geometry.size.height)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.white, lineWidth: 4))
                .shadow(radius: 7)
        }
//    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(imageName: "icybay")
    }
}
