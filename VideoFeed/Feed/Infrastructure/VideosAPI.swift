//
// Created by Francisco Prieto on 28/08/2020.
// Copyright (c) 2020 Francisco Cardelle. All rights reserved.
//

import Foundation
import Alamofire

protocol VideosAPIProtocol {
    func getVideos(page: Int) -> [FeedVideo]
}

class VideosAPI: VideosAPIProtocol {
    let headers: HTTPHeaders = [
        "Authorization": "563492ad6f9170000100000186b945051add4d5684c6046acc229624"
    ]

    func getVideos(page: Int) -> [FeedVideo] {  //Single

    }
}
