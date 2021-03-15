//
//  GithubUserInfoRow.swift
//  LandMarks
//
//  Created by rrli  on 2021/3/7.
//

import SwiftUI

struct GithubUserInfoRow: View {
    var userInfo: GithubUser

    var body: some View {
        HStack {
            ImageView(withURL: userInfo.avatarUrl)
            Text(userInfo.login).font(Font.system(size: 18)).bold()
        }
    }
}

struct GithubUserInfoRow_Previews: PreviewProvider {
    static var previews: some View {
        GithubUserInfoRow(userInfo: githubUsers[0])
    }
}
