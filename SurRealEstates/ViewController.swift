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
    @IBOutlet weak var customerCounter: UILabel!
    var timer = Timer()
    var initCustomerCount = 10000
    var isTimerRunning: Bool = false
    override var prefersStatusBarHidden: Bool {
        return false
    }
    
    fileprivate func initBusinessDescription() {
        businessDescription.isEditable = false
        businessDescription.dataDetectorTypes = UIDataDetectorTypes.all
        businessDescription.setContentOffset(.zero, animated: false)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        scrollView.contentLayoutGuide.bottomAnchor.constraint(equalTo: businessDescription.bottomAnchor).isActive = true
        initBusinessDescription()
        fillDescription()
        if(!isTimerRunning) {
            runTimer()
        }
    }
    
    override func viewDidLayoutSubviews() {
        //businessDescription.setContentOffset(.zero, animated: false)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func runTimer() {
        let rnd = arc4random_uniform(2)
        timer = Timer.scheduledTimer(timeInterval: TimeInterval(rnd), target: self, selector: (#selector(ViewController.updateCustomerCounter)), userInfo: nil, repeats: false)
        isTimerRunning = true
    }
    
    @objc func updateCustomerCounter() {
        let rnd = arc4random_uniform(9)
        initCustomerCount += Int(rnd)        
        let formatter = NumberFormatter()
        formatter.numberStyle = .decimal
        formatter.groupingSeparator = Locale.current.groupingSeparator
        let txtCount = formatter.string(from: NSNumber(value: initCustomerCount))
        customerCounter.text = "\(txtCount ?? "0") owners and counting..."
        runTimer()
    }

    func fillDescription(){
       
        let desc: String = NSLocalizedString("BusinessDesc", comment: "")
        businessDescription.text = desc
    }

}

