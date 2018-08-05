//
//  ViewController.swift
//  SurRealEstates
//
//  Created by Nilay Pal on 8/4/18.
//  Copyright © 2018 njp. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var backgroundImage: UIImageView!
    @IBOutlet weak var businessDescription: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        scrollView.contentLayoutGuide.bottomAnchor.constraint(equalTo: businessDescription.bottomAnchor).isActive = true
        businessDescription.isEditable = false
        businessDescription.dataDetectorTypes = UIDataDetectorTypes.all
        FillDescription()
        businessDescription.setContentOffset(.zero, animated: false)
    }
    
    override func viewDidLayoutSubviews() {
        businessDescription.setContentOffset(.zero, animated: false)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func FillDescription(){
       
        let desc: String = """


Making your Real Estates Surreal!

Haven't you always dreamed about owning real estate outside Earth?

At SurReal Estates, we have developed a path-breaking technology to make your dream come true. Using the latest state-of-the-art mapping techniques and long-distance laser engravings, we now give you the chance to own a piece of land on the Moon and mark your boundary right from Earth.

Come, visit us (yes, we have a office in Earth!) and claim your surreal estate!

Phone: 1-555-555-5455
Hours: Monday - Friday 9AM - 5PM EST
Location: 18441 Nantz Rd, Cornelius, NC 28031


"""
        businessDescription.text = desc
    }

}

