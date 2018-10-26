//
//  KnockKnockViewController.swift
//  ikid
//
//  Created by Nattanon Bunyatipanon on 10/26/18.
//  Copyright © 2018 Nattanon Bunyatipanon. All rights reserved.
//

import UIKit

class KnockKnockViewController: UIViewController {
    @IBOutlet weak var viewOne: UIView!
    @IBOutlet weak var viewTwo: UIView!
    @IBOutlet weak var viewThree: UIView!
    @IBOutlet weak var viewFour: UIView!
    @IBOutlet weak var viewFive: UIView!
    
    var placeOfFlip : Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func btnFlip(_ sender: Any) {
        switch placeOfFlip {
        case 0:
            UIView.transition(from: viewOne, to: viewTwo, duration: 0.5, options: [.transitionFlipFromRight, .showHideTransitionViews])
            self.placeOfFlip += 1
        case 1:
            UIView.transition(from: viewTwo, to: viewThree, duration: 0.5, options: [.transitionFlipFromRight, .showHideTransitionViews])
            self.placeOfFlip += 1
        case 2:
            UIView.transition(from: viewThree, to: viewFour, duration: 0.5, options: [.transitionFlipFromRight, .showHideTransitionViews])
            self.placeOfFlip += 1
        case 3:
            UIView.transition(from: viewFour, to: viewFive, duration: 0.5, options: [.transitionFlipFromRight, .showHideTransitionViews])
            self.placeOfFlip += 1
        case 4:
            UIView.transition(from: viewFive, to: viewOne, duration: 0.5, options: [.transitionFlipFromRight, .showHideTransitionViews])
            self.placeOfFlip = 0
        default:
            assert(false)
        }
        

    }
    

}
