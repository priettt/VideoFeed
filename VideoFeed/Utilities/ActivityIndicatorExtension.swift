//
// Created by Francisco Prieto on 28/08/2020.
// Copyright (c) 2020 Francisco Cardelle. All rights reserved.
//

import UIKit

var activityIndicatorView: UIView?

extension UIView {
    func showSpinner() {
        let baseView = UIView.init(frame: self.bounds)
        baseView.backgroundColor = UIColor.init(red: 0.5, green: 0.5, blue: 0.5, alpha: 0.5)
        let auxSpinnerView = UIActivityIndicatorView.init(style: .large)
        auxSpinnerView.startAnimating()
        auxSpinnerView.center = baseView.center

        DispatchQueue.main.async {
            baseView.addSubview(auxSpinnerView)
            self.addSubview(baseView)
        }

        activityIndicatorView = baseView
    }

    func removeSpinner() {
        DispatchQueue.main.async {
            activityIndicatorView?.removeFromSuperview()
            activityIndicatorView = nil
        }
    }
}