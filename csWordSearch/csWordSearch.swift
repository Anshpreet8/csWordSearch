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
    var words = [""]
    var gridSize = 10
    var labels = [[Label]]() // 2d array for rows and columns
    var letter = [[String]]()
    var col = 1
    var row = 0
    
    // wrap the lowercase letters into an array
    let fillInLetters = (97...122).map {
        Character(Unicode.Scalar($0))
    }
    
    // create the grid (make the entire grid of labels )
    func createGrid() {
        // labl will be an array of arrays of Label
       labels = (0 ..< 10).map { _ in
            (0 ..< 10).map { _ in Label() }
       }
        
        putInWords()
        fillInGaps()
        displayGrid()
    }
    
    
    // MARK: Putting in the letters
    private func putInWords() {
        for column in labels {
            for label in column {
                if col == 2 {
                label.letter = "s"
                }
                if col == 3 {
                label.letter = "w"
                }
                if col == 4 {
                label.letter = "i"
                }
                if col == 5 {
                label.letter = "f"
                }
                if col == 6 {
                label.letter = "t"
                }
                if col == 11 {
                label.letter = "e"
                }
                if col == 21 {
                label.letter = "l"
                }
                if col == 31 {
                label.letter = "i"
                }
                if col == 41 {
                label.letter = "b"
                }
                if col == 51 {
                label.letter = "o"
                }
                if col == 61 {
                label.letter = "m"
                }
                if col == 10 {
                label.letter = "o"
                }
                if col == 19 {
                label.letter = "b"
                }
                if col == 28 {
                label.letter = "j"
                }
                if col == 37 {
                label.letter = "e"
                }
                if col == 46 {
                label.letter = "c"
                }
                if col == 55 {
                label.letter = "t"
                }
                if col == 64 {
                label.letter = "i"
                }
                if col == 73 {
                label.letter = "v"
                }
                if col == 82 {
                label.letter = "e"
                }
                if col == 91 {
                label.letter = "c"
                }
                if col == 28 {
                label.letter = "j"
                }
                if col == 27 {
                label.letter = "a"
                }
                if col == 26 {
                label.letter = "v"
                }
                if col == 25 {
                label.letter = "a"
                }
                if col == 24 {
                label.letter = "e"
                }
                if col == 34 {
                label.letter = "l"
                }
                if col == 44 {
                label.letter = "b"
                }
                if col == 54 {
                label.letter = "a"
                }
                if col == 64 {
                label.letter = "i"
                }
                if col == 74 {
                label.letter = "r"
                }
                if col == 84 {
                label.letter = "a"
                }
                if col == 94 {
                label.letter = "v"
                }
                if col == 29 {
                label.letter = "k"
                }
                if col == 39 {
                label.letter = "o"
                }
                if col == 49 {
                label.letter = "t"
                }
                if col == 59 {
                label.letter = "l"
                }
                if col == 69 {
                label.letter = "i"
                }
                if col == 79 {
                label.letter = "n"
                }
                col += 1
            }
        }
    }
    
    private func fillInGaps() {
        for column in labels { // go throught every column in grid
            for label in column { // check whether theres no letter in that label
                if label.letter == " " {
                    label.letter = fillInLetters.randomElement()!
                }
            }
        }
    }
    
    private func displayGrid() {
        // navigate through entire 2d array
        for column in labels {
            for row in column {
                print(row.letter, terminator: "")
            }
            
            print("")
        }
    }
    
    
}

