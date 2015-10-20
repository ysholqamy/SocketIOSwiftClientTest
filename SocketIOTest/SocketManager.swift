//
//  SocketManager.swift
//  SocketIOTest
//
//  Created by Youssef on 10/20/15.
//  Copyright © 2015 Youssef. All rights reserved.
//

import Foundation
import Socket_IO_Client_Swift

class SocketManager {
    var socket : SocketIOClient!
    
    init() {
        initSocket()
    }
    
    func initSocket() {
        self.socket = SocketIOClient(socketURL: "http://staging.konnecti.com:5001")
        self.addHandlers()
    }
    
    
    class var sharedInstance : SocketManager {
        struct Singleton {
            static let instance = SocketManager()
        }
        return Singleton.instance
    }
    
    
    func addHandlers() {
        self.socket.on("connect") {data, _ in
            print("Socket connected")
        }
        
        self.socket.on("disconnect") {data, _ in
            print("Socket disconnected")
            self.socket.removeAllHandlers()
            self.initSocket()
            self.socket.connect()
        }
    }
}