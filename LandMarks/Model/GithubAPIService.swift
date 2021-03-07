//
//  GithubAPIService.swift
//  LandMarks
//
//  Created by rrli  on 2021/3/7.
//

import Foundation

struct GithubUser {
    var id: Int64
    var login: String
    var avatarUrl: String
}

let user1 = GithubUser(id: 123, login: "reeli", avatarUrl: "https://images.xiaozhuanlan.com/photo/2019/f611be8fcaf89d34d3624cb9375372c3.png")

var githubUsers: [GithubUser] = [user1]
