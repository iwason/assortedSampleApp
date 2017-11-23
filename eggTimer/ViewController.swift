//
//  ViewController.swift
//  eggTimer
//
//  Created by jumpei iwamura on 2017/11/22.
//  Copyright © 2017年 jumpei iwamura. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var timer = Timer()
    var time = 210
    

    
    @IBOutlet weak var secondLabel: UILabel!
    
    @IBAction func startTimer(_ sender: Any) {
        if (timer.isValid == false){
            timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.decreaseNumber), userInfo: nil, repeats: true)
        }

    }
    @IBAction func stopTimer(_ sender: Any) {
        timer.invalidate()
    }
    
    @IBAction func resetTimer(_ sender: Any) {
        time = 210
        secondLabel.text = String(time)
    }
    
    @IBAction func addTimer(_ sender: Any) {
        time += 10
        secondLabel.text = String(time)
    }
    
    @IBAction func decreaseTimer(_ sender: Any) {
        if time >= 10 {
            time -= 10
            secondLabel.text = String(time)
        }

    }
    
    @objc func decreaseNumber(){
        if time > 0 {
            time -= 1
            secondLabel.text = String(time)
        } else {
            timer.invalidate()
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

