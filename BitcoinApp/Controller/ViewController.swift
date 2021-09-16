//
//  ViewController.swift
//  BitcoinApp
//
//  Created by Haroon Maqsood on 9/16/21.
//

import UIKit
import SVGKit
class ViewController: UIViewController {
    @IBOutlet weak var logo: UIImageView!
    @IBOutlet weak var price: UILabel!
    var timer = Timer()
    override func viewDidLoad() {
        super.viewDidLoad()
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(timerAction), userInfo: nil, repeats: true)
    }
 
}

