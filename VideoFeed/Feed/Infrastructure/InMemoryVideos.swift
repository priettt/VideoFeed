//
// Created by Francisco Prieto on 28/08/2020.
// Copyright (c) 2020 Francisco Cardelle. All rights reserved.
//

import Foundation

protocol LocalVideosProtocol {
    func getVideoAt(index: Int) -> FeedVideo?
    func storeVideo(video: FeedVideo)
    func getCount() -> Int
}

class InMemoryVideos: LocalVideosProtocol {
    var videos = [FeedVideo]()

    func getCount() -> Int {
        return videos.count
    }

    func getVideoAt(index: Int) -> FeedVideo? {
        if index < 0 || index >= videos.count {
            return nil
        }
        return videos[index]
    }

    func storeVideo(video: FeedVideo) {
        videos.append(video)
    }
}
