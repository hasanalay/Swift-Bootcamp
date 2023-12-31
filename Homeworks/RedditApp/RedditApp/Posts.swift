//
//  Posts.swift
//  RedditApp
//
//  Created by Hasan Alay on 28.09.2023.
//

import Foundation
class Posts {
    var subProfile:String?
    var subName:String?
    var postTimer:String?
    var postContent:String?
    var postContentImage:String?
    var likes:String?
    var comments:String?
    
    init(subProfile: String, subName: String, postTimer: String, postContent: String, postContentImage: String, likes: String, comments: String) {
        self.subProfile = subProfile
        self.subName = subName
        self.postTimer = postTimer
        self.postContent = postContent
        self.postContentImage = postContentImage
        self.likes = likes
        self.comments = comments
    }
}
