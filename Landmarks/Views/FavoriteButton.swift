//
//  FavoriteButton.swift
//  Landmarks
//
//  Created by rrli  on 2021/3/15.
//

import SwiftUI

struct FavoriteButton: View {
    @Binding var isSet:Bool
    
    var body: some View {
        Button(action: {
            isSet.toggle()
        }, label: {
            if isSet {
                Image(systemName: "star.fill")
                    .foregroundColor(.yellow)
            }else {
                Image(systemName: "star")
            }
        })
    }
}

struct FavoriteButton_Previews: PreviewProvider {
    static var previews: some View {
        FavoriteButton(isSet: .constant(true))
    }
}
