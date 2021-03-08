//
//  RoundedButton.swift
//  LandMarks
//
//  Created by rrli  on 2021/3/8.
//

import SwiftUI

struct RoundedButton: View {
    var label: String
    
    var body: some View {
        Button(action: {}) {
            HStack{
                Spacer()
                Text(label)
                    .font(.headline)
                Spacer()
            }
        }
        .padding(.vertical, 10)
        .foregroundColor(.white)
        .background(Color.red)
        .cornerRadius(4)
        .padding(.horizontal, 50) // 顺序问题，为什么 padding 一定要放到最后才能生效?
    }
}

struct RoundedButton_Previews: PreviewProvider {
    static var previews: some View {
        RoundedButton(label: "Save Button").previewLayout(.sizeThatFits)
    }
}
