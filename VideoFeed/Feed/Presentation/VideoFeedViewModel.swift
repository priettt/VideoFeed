//
// Created by Francisco Prieto on 28/08/2020.
// Copyright (c) 2020 Francisco Cardelle. All rights reserved.
//

import Foundation

class VideoFeedViewModel {
    private var videosRepository: VideosRepositoryProtocol

    init(videosRepository: VideosRepositoryProtocol) {
        self.videosRepository = videosRepository
    }

    func getNumberOfVideos() -> Int {
        return videosRepository.getCount()
    }

    func getVideoAt(row: Int) -> FeedVideo {
        return videosRepository.getVideoAt(index: row)
    }
}
