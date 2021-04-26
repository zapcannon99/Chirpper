//
//  Post.swift
//  Chirpper
//
//  Created by Joel Yin on 4/21/21.
//

import Foundation

struct Post {
    let id: String
    let url: String
    let author: String
    let title: String
    let points: Int
    let deleted: Bool
    let message: String
    let created_at: Int
    let commentCount: Int
}
