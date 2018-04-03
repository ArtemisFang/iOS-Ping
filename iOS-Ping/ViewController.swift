//
//  ViewController.swift
//  iOS-Ping
//
//  Created by 方媛 on 2018/4/3.
//  Copyright © 2018年 Artemis. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        PlainPing.ping("www.baidu.com", withTimeout: 1.0, completionBlock: { (timeElapsed:Double?, error:Error?) in
            if let latency = timeElapsed {
                print("latency (ms): \(latency)")
            }
            if let error = error {
                print("error: \(error.localizedDescription)")
            }
        })
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

