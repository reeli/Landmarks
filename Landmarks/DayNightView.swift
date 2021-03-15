//
//  DaynightView.swift
//  LandMarks
//
//  Created by rrli  on 2021/3/4.
//

import SwiftUI

struct DayNightView: View {
    @Binding var isOn:Bool
    var body: some View {
        Toggle(isOn:$isOn){
            Text("")
        }.labelsHidden()
    }
}

struct DayNightView_Previews: PreviewProvider {
    static var previews: some View {
        DayNightView(isOn: .constant(false))
    }
}
