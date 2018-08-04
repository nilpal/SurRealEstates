//
//  ViewController.swift
//  SurRealEstates
//
//  Created by Nilay Pal on 8/4/18.
//  Copyright © 2018 njp. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var businessDescription: UILabel!
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var backgroundImage: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        scrollView.contentLayoutGuide.bottomAnchor.constraint(equalTo: businessDescription.bottomAnchor).isActive = true

        FillDescription()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func FillDescription(){
        let tagLine: String = "aim for the stars, shoot for the moon!"
        let desc: String = """
Haven't you always dreamed about owning real estate outside Earth?

At SurReal Estates, we have developed a path-breaking technology to make your dream come true. Using the latest state-of-the-art mapping techniques and long-distance laser engravings, we now give you the chance to own your own piece of land on the Moon.

Come, visit us today and claim your (sur)real estate!
"""
        businessDescription.text = desc
    }

}

