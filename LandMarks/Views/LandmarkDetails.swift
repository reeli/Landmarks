//
//  LandMarkDetails.swift
//  LandMarks
//
//  Created by rrli  on 2021/3/13.
//

import SwiftUI

struct LandmarkDetails: View {
    var body: some View {
        VStack{
            MapView()
                .ignoresSafeArea()
                .frame(height:300)
            
            CircleImage(imageName: "icybay")
                .offset(y: -130)
                .padding(.bottom, -130)
            
            
            VStack(alignment: .leading) {
                Text("Turtle Rock")
                    .font(.title)
                
                HStack() {
                    Text("Joshua Tree National Park")
                    Spacer()
                    Text("Caliornia")
                }
                .font(.subheadline)
                .foregroundColor(.secondary)
                
                Divider()
                
                Text("About Turtle Rock")
                    .font(Font.title2)
                Text("Description text goes here.")
            }
            .padding()
            
            Spacer()
        }
    }
}

struct LandMarkDetails_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetails()
    }
}
