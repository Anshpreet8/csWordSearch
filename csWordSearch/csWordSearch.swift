//
//  csWordSearch.swift
//  csWordSearch
//
//  Created by Anshpreet Sandhu on 2020-09-03.
//  Copyright © 2020 Anshpreet Sandhu. All rights reserved.
//

import Foundation

// this enum indicates whether the word will be horizontal, vertical, diagonal, etc
enum WordPlacement: CaseIterable {
    case downToUp
    case upToDown
    case leftToRight
    case rightToLeft
    case topRightToBottomLeft
    case topLeftToBottomRight
    case bottomRightToTopLeft
    case bottomLeftToTopRight
    
    //indicates where on the grid the user moves, depending on how the word is placed
    var axes: (x: Int, y: Int) {
        switch self {
        case .downToUp: return (0, -1)
        case .upToDown: return (0, 1)
        case .leftToRight: return (1, 0)
        case .rightToLeft: return (-1, 0)
        case .topRightToBottomLeft: return (-1, 1)
        case .topLeftToBottomRight: return (1, 1)
        case .bottomRightToTopLeft: return (-1, -1)
        case .bottomLeftToTopRight: return (1, -1)
        }
    }
}

// return WordPlacement.allCases.shuffled()

// what the word is
struct Word: Decodable {
    var word: String
}

// MARK: WordSearch Class

class Label {
    var letter: Character = " "
}

class csWordSearch {
    // words will be an array of the Word struct
    var words = [Word]()
    var gridSize = 10
    var labels = [[Label]]()
    
    // wrap the lowercase letters into an array
    let fillInLetters = (97...122).map {
        Character(Unicode.Scalar($0))
    }
    
    // create the grid
    func createGrid() {
        // labl will be an array of arrays of Label
        labels = (0 ..< 10).map { _ in
            (0 ..< 10).map { _ in Label() }
        }
        
        fillInGaps()
        displayGrid()
    }
    
    private func fillInGaps() {
        for column in labels {
            for label in column {
                if label.letter == " " {
                    label.letter = fillInLetters.randomElement()!
                }
            }
        }
    }
}

