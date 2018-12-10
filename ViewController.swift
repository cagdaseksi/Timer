//
//  ViewController.swift
//  Timer
//
//  Created by cagdas on 9.12.2018.
//  Copyright © 2018 cagdas. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblTime: UILabel!
    var time = 0
    
    //timer
    var timer = Timer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func btnStart(_ sender: Any) {
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.action), userInfo: nil, repeats: true)
    }
    
    @IBAction func btnPause(_ sender: Any) {
        timer.invalidate()
    }
    
    @IBAction func btnReset(_ sender: Any) {
        timer.invalidate()
        time = 0
        lblTime.text = "0"
    }
    
    @objc func action() {
        time += 1
        lblTime.text = String(time)
    }
    
}

