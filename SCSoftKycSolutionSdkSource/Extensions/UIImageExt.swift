//
//  UIImageExt.swift
//  SCSoftKycSolutionSdk
//
//  Created by samiozakyol on 28.07.2021.
//

import Foundation
import UIKit

public enum ImageFormat {
    case png
    case jpeg(CGFloat)
}

extension UIImage {
    public func toBase64(format: ImageFormat) -> String? {
        var imageData: Data?

        switch format {
        case .png:
            imageData = self.pngData()
        case .jpeg(let compression):
            imageData = self.jpegData(compressionQuality: compression)
        }

        return imageData?.base64EncodedString()
    }
}
