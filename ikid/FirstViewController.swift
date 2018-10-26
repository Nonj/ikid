//
//  FirstViewController.swift
//  ikid
//
//  Created by Nattanon Bunyatipanon on 10/25/18.
//  Copyright © 2018 Nattanon Bunyatipanon. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var viewParent: UIView!

    @IBOutlet weak var viewAnswer: UIView!
    @IBOutlet weak var viewQuestion: UIView!
    
    var isFlipped = false
    

    @IBAction func btFlip(_ sender: Any) {
        if !isFlipped {
            isFlipped = true
            UIView.transition(from: viewQuestion, to: viewAnswer, duration: 0.5, options: [.transitionFlipFromRight, .showHideTransitionViews])
            
        } else {
            isFlipped = false
            UIView.transition(from: viewAnswer, to: viewQuestion, duration: 0.5, options: [.transitionFlipFromLeft, .showHideTransitionViews])
            
        }
        
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

