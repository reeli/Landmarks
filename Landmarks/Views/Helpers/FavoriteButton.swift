//
//  FavoriteButton.swift
//  LandMarks
//
//  Created by rrli  on 2021/3/8.
//

import SwiftUI

struct FavoriteButton: View {
    @Binding var isSet:Bool
    
    var body: some View {
        Button(action: {
            isSet.toggle()
        }) {
            Image(systemName: isSet ? "star.fill": "star")
                .foregroundColor(isSet ? Color.yellow : Color.gray)
        }
    }
}

struct FavoriteButton_Previews: PreviewProvider {
    static var previews: some View {
        FavoriteButton(isSet: .constant(true))
    }
}
