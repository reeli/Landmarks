//
//  ContentView.swift
//  LandMarks
//
//  Created by rrli  on 2021/3/3.
//

import SwiftUI

struct ContentView: View {
    @State var isOn: Bool=false
    
    var body: some View {
        LandmarkList()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
