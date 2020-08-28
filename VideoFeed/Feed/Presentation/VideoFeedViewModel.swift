//
// Created by Francisco Prieto on 28/08/2020.
// Copyright (c) 2020 Francisco Cardelle. All rights reserved.
//

import Foundation

class VideoFeedViewModel {
    private var videos = [FeedVideo]()

    init() {
        for _ in 0..<10 {
            videos.append(FeedVideo(caption: "hola", username: "hola", videoFilename: "hola", videoExtension: "hola"))
        }
    }

    func getNumberOfVideos() -> Int {
        return videos.count
    }

    func getVideoAt(row: Int) -> FeedVideo {
        return videos[row]
    }
}
