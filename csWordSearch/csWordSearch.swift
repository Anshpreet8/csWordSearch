//
//  csWordSearch.swift
//  csWordSearch
//
//  Created by Anshpreet Sandhu on 2020-09-03.
//  Copyright © 2020 Anshpreet Sandhu. All rights reserved.
//

import Foundation

// indicates whether the word will be horizontal, vertical, diagonal, etc
enum WordPlacement: CaseIterable {
    case downToUp
    case upToDown
    case leftToRight
    case rightToLeft
    case topRightToBottomLeft
    case topLeftToBottomRight
    case bottomRightToTopLeft
    case bottomLeftToTopRight
}
