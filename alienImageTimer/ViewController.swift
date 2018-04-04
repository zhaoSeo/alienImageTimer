//
//  ViewController.swift
//  alienImageTimer
//
//  Created by Sang won Seo on 2018. 4. 4..
//  Copyright © 2018년 Sang won Seo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var count = 1
    var play = false
    var myTimer = Timer()
    
    @IBOutlet weak var myImageView: UIImageView!
    @IBOutlet weak var imageCounter: UILabel!
    @IBOutlet weak var button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        imageCounter.text = String(count)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func btMoveImage(_ sender: UIButton) {
        if play == false {
        myTimer = Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(doAnimation), userInfo: nil, repeats: true)
            play = true
            button.setTitle("Stop", for: .normal)
        } else {
            myTimer.invalidate()
            play = false
            button.setTitle("Start", for: .normal)
        }
    }
    @objc func doAnimation() {
        if count == 5 {
            count = 1
        } else {
            count = count + 1
        }
        myImageView.image = UIImage(named: "frame\(count).png")
        imageCounter.text = String(count)
    }
    

}

