//
// Created by Francisco Prieto on 10/08/2020.
// Copyright (c) 2020 Francisco Cardelle. All rights reserved.
//

import UIKit
import AVFoundation

class VideoCollectionViewCell: UICollectionViewCell {
    let player: AVPlayer? = nil
    static let identifier = "VideoCollectionCell"

    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.backgroundColor = .red
        contentView.clipsToBounds = true
    }

    func configure(with model: VideoModel) {

    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}