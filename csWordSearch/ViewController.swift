//
//  ViewController.swift
//  csWordSearch
//
//  Created by Anshpreet Sandhu on 2020-09-03.
//  Copyright © 2020 Anshpreet Sandhu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // add the words in the array
        let words = ["swift", "kotlin", "objectivec", "variable", "java", "mobile"]
        
        // call the create grid function
        let wordSearch = csWordSearch()
        wordSearch.words = words
        wordSearch.createGrid()
    }


}

