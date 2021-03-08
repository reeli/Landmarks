//
//  LabledTextField.swift
//  LandMarks
//
//  Created by rrli  on 2021/3/8.
//

import SwiftUI

struct LabledTextField: View {
    var label: String
    var placeholder: String
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(label).font(.headline)
            TextField(placeholder, text: .constant(""))
                .padding()
                .background(Color.gray)
                .cornerRadius(5)
                        
        }.padding(.horizontal, 15)
    }
}

struct LabledTextField_Previews: PreviewProvider {
    static var previews: some View {
        LabledTextField(label: "NAME", placeholder: "Please fill in this field")
    }
}
