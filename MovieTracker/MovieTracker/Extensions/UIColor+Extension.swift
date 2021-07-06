//
//  UIColor+Extension.swift
//  MovieTracker
//
//  Created by Aditi Agrawal on 06/07/21.
//

import UIKit


// MARK: - UIColor extension
extension UIColor {
  /// Init color from hex string
  ///
  /// - Parameter hex: A hex string, can start with or without #
  convenience init(hex: String) {
    let hex = hex.replacingOccurrences(of: "#", with: "")

    // Need 6 characters
    guard hex.count == 6 else {
      self.init(white: 1.0, alpha: 1.0)
      return
    }

    self.init(
      red:   CGFloat((Int(hex, radix: 16)! >> 16) & 0xFF) / 255.0,
      green: CGFloat((Int(hex, radix: 16)! >> 8) & 0xFF) / 255.0,
      blue:  CGFloat((Int(hex, radix: 16)!) & 0xFF) / 255.0, alpha: 1.0
    )
  }
}
