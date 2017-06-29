//
//  AppDelegate.swift
//  AllCode
//
//  Created by Karl Zeo on 05/06/2017.
//  Copyright © 2017 Karl Zeo. All rights reserved.
//

import Cocoa

//@NSApplicationMain      这个注释掉,默认引入的,不注释掉不走applicationDidFinishLaunching方法.注释后,需要自己重写main函数
class AppDelegate: NSObject, NSApplicationDelegate {
    
    lazy var windowController: KZWindowController = {
//        let windowController = KZWindowController(windowNibName: "")
        let windowController = KZWindowController()
        return windowController
    }()
    
    func applicationDidFinishLaunching(_ aNotification: Notification) {
        // Insert code here to initialize your application
        self.windowController.showWindow(self)
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }


}

