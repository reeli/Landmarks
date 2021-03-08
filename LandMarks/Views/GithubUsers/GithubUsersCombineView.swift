//
//  GithubUsersCombineView.swift
//  LandMarks
//
//  Created by rrli  on 2021/3/7.
//

import SwiftUI

struct GithubUsersCombineView: View {
    var body: some View {
        ScrollView{
            Image("icybay")
                .resizable()
                .scaledToFill()
                .frame(height: 300)
                .clipped()
                
            
            VStack(alignment: .leading) {
                LabledTextField(label: "NAME", placeholder: "Please fill in the restaurant name")
                LabledTextField(label: "TYPE", placeholder: "Please fill in the restaurant type")
                LabledTextField(label: "ADDRESS", placeholder: "Please fill in the restaurant address")
                LabledTextField(label: "PHONE", placeholder: "Please fill in the restaurant phone")
                LabledTextField(label: "DESCRIPTION", placeholder: "Please fill in the restaurant description")
                RoundedButton(label: "Save").padding(.top, 20)
            }
            .padding(.top, 20)
        }
    }
}

struct GithubUsersCombineView_Previews: PreviewProvider {
    static var previews: some View {
        GithubUsersCombineView()
    }
}
