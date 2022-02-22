//
//  ViewController.swift
//  chronometreApp
//
//  Created by Enes Sancar on 22.02.2022.
//

import UIKit

class ViewController: UIViewController {

    var timer = Timer()
    var time = 0
    
    @IBOutlet weak var timerLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func startButton(_ sender: Any) {
        
        timerLabel.text = String(time)
        
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(timerCounter), userInfo: nil, repeats: true)

    }
    
    @IBAction func stopButton(_ sender: Any) {
        
        timer.invalidate()  // invalid edip geçersiz kılmak
    }
    
    @IBAction func resetButton(_ sender: Any) {
        
        time = 0
        timerLabel.text = String(time)
        timer.invalidate()
    }
    
    
    @objc func timerCounter(){
        
        timerLabel.text = String(time)
        time += 1
        
    }
    
}

