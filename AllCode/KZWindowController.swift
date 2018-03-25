//
//  KZWindowController.swift
//  AllCode
//
//  Created by Karl Zeo on 05/06/2017.
//  Copyright © 2017 Karl Zeo. All rights reserved.
//

import Cocoa

class KZWindowController: NSWindowController {

    override func windowDidLoad() {
        super.windowDidLoad()
    
        // Implement this method to handle any initialization after your window controller's window has been loaded from its nib file.
        
    }
    
    lazy var myWindow: NSWindow? = {
        let frame: CGRect = CGRect(x: 0, y: 0, width: 400, height: 280)
        let style: NSWindow.StyleMask = [.titled,.closable,.resizable]
        let back: NSWindow.BackingStoreType = .buffered
        let window: KZWindow = KZWindow(contentRect: frame, styleMask: style, backing: back, defer: false)
//        window.isResizable = false
        window.title = "Test Window"
        window.windowController = self
//        window.titleVisibility = .hidden
//        window.titlebarAppearsTransparent = true
//        window.isMovableByWindowBackground = true
//        window.backgroundColor = NSColor.red
        return window
}()
    
    lazy var viewController: KZViewController = {
        let viewController = KZViewController()
        return viewController
    }()
    
    override init(window: NSWindow?) {
        super.init(window: window)
        self.window = self.myWindow
        self.contentViewController = self.viewController
        self.window?.center()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
