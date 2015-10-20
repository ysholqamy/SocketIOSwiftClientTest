//
//  ViewController.swift
//  SocketIOTest
//
//  Created by Youssef on 10/20/15.
//  Copyright © 2015 Youssef. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        SocketManager.sharedInstance.socket.connect()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

