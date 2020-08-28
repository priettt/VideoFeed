//
// Created by Francisco Prieto on 28/08/2020.
// Copyright (c) 2020 Francisco Cardelle. All rights reserved.
//

import Foundation

protocol VideosRepositoryProtocol {
    func getCount() -> Int
    func getVideoAt(index: Int) -> FeedVideo
}

class VideosRepository: VideosRepositoryProtocol {
    var localVideos: LocalVideosProtocol
    var videosAPI: VideosAPIProtocol

    let PAGE_SIZE = 10
    let OFFSET = 3

    init(videosLocalStorage: LocalVideosProtocol, videosAPI: VideosAPIProtocol) {
        self.localVideos = videosLocalStorage
        self.videosAPI = videosAPI
    }

    func getCount() -> Int {
        return localVideos.getCount()
    }

    func getVideoAt(index: Int) -> FeedVideo {
        let video = localVideos.getVideoAt(index: index)

        if video != nil {
            return video!
        }

        videosAPI.fetchVideos



        return FeedVideo(caption: "hola", username: "hola", videoFilename: "hola", videoExtension: "hola")
    }

}
