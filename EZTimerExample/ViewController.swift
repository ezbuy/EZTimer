//
//  ViewController.swift
//  EZTimerExample
//
//  Created by xuyun on 2019/12/12.
//  Copyright © 2019 ezbuy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var countDownLabel: UILabel!
    
    private var timer: EZCountDownTimer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if timer != nil {
            timer?.cancel()
            timer = nil
        }
        
        timer =  EZCountDownTimer(interval: .seconds(1), times: 3600) { [weak self] (_, time) in

            self?.countdown(time: Int64(time))
        }
        timer?.start()
    }
    
    fileprivate func countdown(time: Int64) {

        let date = Date(timeIntervalSinceNow: TimeInterval(time))

        let components = NSCalendar.current.dateComponents([.hour, .minute, .second], from: Date(), to: date)

        let hour = components.hour ?? 0
        let minute = components.minute ?? 0
        let second = components.second ?? 0
        
        let hourStr = String(format: "%02d", hour)
        let minuteStr = String(format: "%02d", minute)
        let secondStr = String(format: "%02d", second)
        
        self.countDownLabel.text = hourStr + ":" + minuteStr + ":" + secondStr
    }
    
    deinit {

        if timer != nil {
            timer?.cancel()
            timer = nil
        }
    }
}

