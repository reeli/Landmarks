//
//  CircleImage.swift
//  LandMarks
//
//  Created by rrli  on 2021/3/13.
//

import SwiftUI

struct CircleImage: View {
    var image: Image
    
    var body: some View {
//        GeometryReader { geometry in
           image
//                .frame(width: geometry.size.width, height: geometry.size.height)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.white, lineWidth: 4))
                .shadow(radius: 7)
        }
//    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(image: Image("icybay"))
    }
}
