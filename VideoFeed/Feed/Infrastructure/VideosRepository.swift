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
    func getCount() -> Int {
        return 10
    }

    func getVideoAt(index: Int) -> FeedVideo {
        return FeedVideo(caption: "hola", username: "hola", videoFilename: "hola", videoExtension: "hola")
    }

}
