//
//  SecondViewController.swift
//  ikid
//
//  Created by Nattanon Bunyatipanon on 10/25/18.
//  Copyright © 2018 Nattanon Bunyatipanon. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var viewMistletoe: UIImageView!
    @IBOutlet weak var viewSetUp: UIView!
    var isFlipped = false
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }


    @IBAction func btnFlip(_ sender: Any) {
        if !isFlipped {
            isFlipped = true
            UIView.transition(from: viewSetUp, to: viewMistletoe, duration: 0.5, options: [.transitionFlipFromRight, .showHideTransitionViews])
            
        } else {
            isFlipped = false
            UIView.transition(from: viewMistletoe, to: viewSetUp, duration: 0.5, options: [.transitionFlipFromLeft, .showHideTransitionViews])
        }
    }
}

