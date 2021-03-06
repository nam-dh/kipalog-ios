//
//  Post.swift
//  Kipalog
// 
//  Created by DTVD on 2017/12/24.
//  Copyright © 2017 Kipalog. All rights reserved.
//

import Foundation

struct Post {
    let status: PostStatus
    let title: String
    let detail: String
    let author: User
    let meta: PostMeta
}